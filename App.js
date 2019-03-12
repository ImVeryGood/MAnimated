import React, { Component } from "react";
import {
  Platform,
  StyleSheet,
  Text,
  View,
  Button,
  Animated,
  Easing
} from "react-native";

type Props = {};
export default class App extends Component<Props> {
  constructor(props) {
    super(props);
    this.spinValue = new Animated.Value(0);
    this.translateValue = new Animated.ValueXY({ x: 0, y: 0 });
    this.bounceValue = new Animated.Value(0);
    this.fadeOutOpacity = new Animated.Value(0);
  }

  startAnimated() {
    this.bounceValue.setValue(1.5); // 设置一个较大的初始值
    this.translateValue.setValue({ x: 0, y: 0 });
    this.fadeOutOpacity.setValue(1);
    Animated.sequence([
      Animated.spring(this.bounceValue, {
        toValue: 0.8,
        friction: 0.8, //摩擦力
        tension: 40 //张力
        //damping: 20 //阻尼(damping) 的物理意义是力的衰减,或物体在运动中的能量耗散。通俗地讲，就是阻止物体继续运动。当物体受到外力作用而振动时,会产生一种使外力衰减的反力,称为阻尼力(或减震力) 。换句话说，阻尼就是“减震”，作用就是用来防止物体来回抖动的，这个与上面聊的那个“抖”
        // - bounciness 正好相反。阻尼越大，物体在运动过程中就越不抖，越小就抖的厉害。
        //mass: 50 // 质量 物体的质量越大，惯性越大。质量越大就抖的越厉害
      }),
      Animated.timing(this.spinValue, {
        toValue: 1,
        duration: 800, // 动画持续的时间（单位是毫秒），默认为500
        easing: Easing.out(Easing.quad) // 一个用于定义曲线的渐变函数
      }),
      Animated.decay(
        // 以一个初始速度开始并且逐渐减慢停止。  S=vt-（at^2）/2   v=v - at
        this.translateValue,
        {
          velocity: 10, // 起始速度，必填参数。
          deceleration: 0.8 // 速度衰减比例，默认为0.997。
        }
      ),
      Animated.timing(this.fadeOutOpacity, {
        toValue: 0,
        duration: 2000, // 动画持续的时间（单位是毫秒），默认为500
        easing: Easing.linear //线性渐变函数
      })
    ]).start(); //循环执行
  }
  render() {
    return (
      <View style={styles.container}>
        <Button title="start" onPress={() => this.startAnimated()} />
        <Animated.Image
          style={{
            width: 100,
            height: 100,
            transform: [
              { scale: this.bounceValue },
              { translateX: this.translateValue.x },
              { translateY: this.translateValue.y },
              {
                rotate: this.spinValue.interpolate({
                  inputRange: [0, 1],
                  outputRange: ["0deg", "360deg"]
                })
              }
            ],
            opacity: this.fadeOutOpacity
          }}
          source={{
            uri: "http://i.imgur.com/XMKOH81.jpg"
          }}
        />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: "center",
    backgroundColor: "#F5FCFF"
  },
  welcome: {
    fontSize: 20,
    textAlign: "center",
    margin: 10
  },
  instructions: {
    textAlign: "center",
    color: "#333333",
    marginBottom: 5
  }
});
