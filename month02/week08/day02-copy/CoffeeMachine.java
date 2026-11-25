
/**
 * Write a description of class CoffeeMachine here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class CoffeeMachine
{
    private int waterMl;
    private int beansGrams;
    private int cupsMade;
    public CoffeeMachine(int initialWater, int initialBeans) {
        // TODO 1: Сөрөг утга орвол 0 болгож waterMl, beansGrams-ийг онооно. cupsMade = 0.
        cupsMade = 0;
    }
    // TODO 2: getWaterMl (() -> int), getBeansGrams (() -> int),
    // getCupsMade (() -> int) бичнэ үү
    // TODO 3: refill гэдэг нэртэй method бичнэ үү
    // (int water, int beans) -> void (зөвхөн эерэг утгуудыг нэмнэ)
    // TODO 4: makeEspresso гэдэг нэртэй method бичнэ үү
    // () -> boolean
    // 1 аяга эспрессо хийхэд 50мл ус, 15гр кофе шаардлагатай.
    // Нөөц хүрэлцвэл ус болон кофег хасаж, cupsMade-ийг 1-ээр нэмээд true буцаана.
    // Хүрэлцэхгүй бол юу ч хасахгүйгээр false буцаана.
}
