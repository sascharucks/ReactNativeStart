
import React from 'react'
import { View, Text, StyleSheet } from 'react-native'

export default class App extends React.Component<void> {
  render() {
    return (
      <View style={styles.container}>
        <Text>Hallo Welt</Text>
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'white',
    alignItems: 'center',
    justifyContent: 'center'
  }
})