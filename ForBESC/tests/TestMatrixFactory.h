/*
 * File:   TestMatrixFactory.h
 * Author: chung
 *
 * Created on Jul 13, 2015, 1:03:10 PM
 */

#ifndef TESTMATRIXFACTORY_H
#define	TESTMATRIXFACTORY_H

#include <cppunit/extensions/HelperMacros.h>

class TestMatrixFactory : public CPPUNIT_NS::TestFixture {
    CPPUNIT_TEST_SUITE(TestMatrixFactory);

    CPPUNIT_TEST(testMakeIdentity);
    CPPUNIT_TEST(testMakeRandomMatrix);

    CPPUNIT_TEST_SUITE_END();

public:
    TestMatrixFactory();
    virtual ~TestMatrixFactory();
    void setUp();
    void tearDown();

private:
    void testMakeIdentity();
    void testMakeRandomMatrix();

};

#endif	/* TESTMATRIXFACTORY_H */

