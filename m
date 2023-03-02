Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5706A8B15
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Mar 2023 22:19:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CFA2F40E16
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Mar 2023 21:19:37 +0000 (UTC)
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
	by lists.linaro.org (Postfix) with ESMTPS id 998253E920
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Mar 2023 21:19:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=oracle.com header.s=corp-2022-7-12 header.b=rm8YEJUA;
	dkim=pass header.d=oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=HqL3jc0P;
	spf=pass (lists.linaro.org: domain of nick.alcock@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=nick.alcock@oracle.com;
	dmarc=pass (policy=none) header.from=oracle.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 322K6cNV009070;
	Thu, 2 Mar 2023 21:19:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=/BTkrRdCuCdjxszkZB+v5HsVy0A3oOxry18OfmsaHlE=;
 b=rm8YEJUABLwwK24Z1+n4i9EK7Eba/zjThCVMUQsWyueGl+4QA6Hi9teNX8ztHudyNBLq
 kTQRKcLHeo4eh7u/RsdopPBB0e4Tjr+yMHmlmsIZ6J/bbFjhFkDv8xTDSk9J1jXyUGP6
 wj9PL4GGZJVl1eqjyPqmovhuzzUc7CqcwkIBrUooFhrkaBeop+AVG22DUnH4aCMw3yGr
 RQPwC+QFDeCeMlC2i1ymdV2TN01r6+FIAbWMF8BeWsIE6H3ULUVy5VOowJCpaH5AP63M
 ht7iEfy3dl/AbJRU3icMY8zWBV9viljDyhnofFLSJIZoUnhwPHjWM41kPQnLXiDO/1SY yg==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3nyb9an083-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 02 Mar 2023 21:19:10 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 322KUUpE002280;
	Thu, 2 Mar 2023 21:19:09 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2177.outbound.protection.outlook.com [104.47.59.177])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3ny8sacfkd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 02 Mar 2023 21:19:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wq2rJIdq3c7KPaJqUbPFabdLoG0vHarlNkd+qPESniZLM2BZjePt3jmJeljXpu/hfCn5JO5qL6RorYm6gmq2bj6HPSz3XjTdsHoiilPYvEfDysAp2t6oDMGVVJS0kEXTp+s1FYbdLamTdSrJE2sZZh80YJ+FmdhxIdnXx3kusiGuNgGxxs/aanNF27GgnW9b9OxFVJFsyxuOoVWJkxzRr0dKMy+n1H9KakbSUIFqGLNGtMquApf4xEqX9elErArVk/dSqPvkLvLCgN1EqlIwn66thM1nPaKs8UTejVGgAqyVNO2aHfLhMCyl3SrR8NSOeeII6/XWlKQbHjJvKIgM+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/BTkrRdCuCdjxszkZB+v5HsVy0A3oOxry18OfmsaHlE=;
 b=Slvad9/yVA1Zy7W7pUmeakQHFFc3fWnGRXxpxQO+IALz76sfqHXSGZJQSSNe1IudLSXx/MFVq88iM3o56uL0PiB62Pk6zBx9ojw1u6Lpx/VGhpmtdoYGtf7EKhgSWymdH0E4mqVjCMsDJzB8lrt8+k3kS0JP9zBmubA/FIKxm4fYhuNurcnfDgtkbQjvhgkoHh5CtHp3iLh2c+odJnnzwhkMFNzbZmhmG7WhfCfvAGNqzZXx1cXCGflVLr7uTaNO9L+84TcSZitKJrAMDaAa5cnIoAgUFNCMnJ9yGiu6f1RNj8l2LZ6NFDdBlinZO6lyAM/VVdFuCZ1ozmoMxqOfIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/BTkrRdCuCdjxszkZB+v5HsVy0A3oOxry18OfmsaHlE=;
 b=HqL3jc0P+cy9e88XrE5zLc+DNl2L51i/BGbWgb5WVQD04bngHFzhJdNxlT18r2sGgcteRG3mPkh5rPFO92sQAXqNVhA/KdxqlwLqbYVpeKsieg/iOxfz/9NQBRE8ZNXXDGxx+ybM9Y0J9QpKzQo5y0gpELzDGzk2Z7l08B2z3ds=
Received: from DS0PR10MB6798.namprd10.prod.outlook.com (2603:10b6:8:13c::20)
 by PH0PR10MB5819.namprd10.prod.outlook.com (2603:10b6:510:141::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.17; Thu, 2 Mar
 2023 21:19:07 +0000
Received: from DS0PR10MB6798.namprd10.prod.outlook.com
 ([fe80::d0f7:e4fd:bd4:b760]) by DS0PR10MB6798.namprd10.prod.outlook.com
 ([fe80::d0f7:e4fd:bd4:b760%4]) with mapi id 15.20.6156.017; Thu, 2 Mar 2023
 21:19:07 +0000
From: Nick Alcock <nick.alcock@oracle.com>
To: mcgrof@kernel.org
Date: Thu,  2 Mar 2023 21:17:54 +0000
Message-Id: <20230302211759.30135-13-nick.alcock@oracle.com>
X-Mailer: git-send-email 2.39.1.268.g9de2f9a303
In-Reply-To: <20230302211759.30135-1-nick.alcock@oracle.com>
References: <20230302211759.30135-1-nick.alcock@oracle.com>
X-ClientProxiedBy: LO4P123CA0429.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18b::20) To DS0PR10MB6798.namprd10.prod.outlook.com
 (2603:10b6:8:13c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR10MB6798:EE_|PH0PR10MB5819:EE_
X-MS-Office365-Filtering-Correlation-Id: 205a3de0-2e85-4a59-333b-08db1b63c1fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NwglD2HxYTvFWJBya+T5zVZJ/uMm0vIPs3zzxQ76GyVmlyK+csyc33iOztOOGnt5McfUna0VT2B6jig1o/n58GZU2y3bMJ5YxaTlN8JozPyVqE2b32WwozJWIG+gYwbWcrPB2qAvlfVW1WkFYZE/UbJz7mCxi/d6DzG1EzLBszNgycjxDzypPxRbGYH0Ix/eqzwqBRLa5JnkWPAVxsm0at4jh2HOmCzoKQzY01JkcOMO0m7a/La79rRr0dhddDASV7KDJsxS1iejc/xEQ1IFS0tWaciIShj1WzZNpEedtMvgn+9031m7GgG0wEUxs8FF3myuGMV/01Whkkue36EfI26EOnOKOXdiq7/PHjXTnCvRjjwlJBzAqOPiy29IxYooj7BnNQ259s3xHBJVWyODVyF9Q16iilhUmbLotkNCXEsGRTiuNjdRw6YDv/4/pCtCASVotQssWWwIoyvoFOirgHXGKiLSFSyyyvzYwS3vV9yvvAhl/bB7U4ug9+yO53dwUlL51q9/XJzFNtDdwpYJLY88UH4ZfT9EJagUAFk5jP1C0B26+0oB3k3FJY4CdJDTI+/CBhX3nxxJ1I4sVL08qknzl1difN+f6Sqvckg8TbefBC1XTe5vPeB3IwcAv9FQ3WIYoO/UP3p6p+38MyOVNg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR10MB6798.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(39860400002)(366004)(376002)(396003)(346002)(136003)(451199018)(5660300002)(44832011)(83380400001)(41300700001)(6916009)(4326008)(8676002)(7416002)(8936002)(66476007)(66556008)(66946007)(54906003)(316002)(38100700002)(36756003)(2906002)(6486002)(478600001)(86362001)(66574015)(6506007)(186003)(6512007)(6666004)(1076003)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eWJjc0Zpc243ZkgyRG56dExaeDFSM0w0RHMzcm5LdzZNM1QvUEdPcVNjYUtW?=
 =?utf-8?B?cDVaRCtKNHFWMXU2bCtwS0Mzb0taUS9vMklERzM0ZGUySEtNYmRodTArVGM5?=
 =?utf-8?B?dnRBQTdJdmpOMjJpVlh0YlgrdzhkQkQ0WUVTbzdBQjI2bk1ydnU4dlh6bmF0?=
 =?utf-8?B?YlY3bjBWODczWjVicEwzYWpyOEQ1d2FlaU1NMEhkS0RxSmN2ZHRzTDRoVVha?=
 =?utf-8?B?eWdKbklNc1JTZWt4N3gvcDAwY0FPOVRJcjFUVHhaSjJZMmNBUUZMQlo0bEdC?=
 =?utf-8?B?azNNS21Cb3lBS2lCTVdET0d0L3AyTmdUaWdZalo1djFITXpGd29ib3pnOWgv?=
 =?utf-8?B?ZzVNOFZjY1NyM0dvbTJPYVhPOE85K1h6OFZGbUwxRHRqb24yN3FOZEszZklQ?=
 =?utf-8?B?YzJZWUpVVzJXdkVDUWt6cGUwNlkzSWpaQ0REYVFRYUhaVDdLMjV2TzMxTXJL?=
 =?utf-8?B?TkJBS2pWeUZ2emZIMjdPdGdEMXp0YVM5TEhWZFU1N0lWZ0tGMG1LUU1KOVlN?=
 =?utf-8?B?MW5PREEveGFlM1h4aTJuMWU2djN0SUlrNVRKVGdWZldxZTEwUUtaZUZwYk9I?=
 =?utf-8?B?NTVVZjJSUk55T01YZUFqeE1UeUFscVM0NHRaT3VMcGs3QmJsSTVUZWQ5cE1n?=
 =?utf-8?B?WnZPb2xaOXErUWo4TUtaMVlQSExrN2xJNVRabjB2YnhJQmNwZkR6SklQcVp0?=
 =?utf-8?B?c3RDOWU2NlpPMjBJVXFmd3BUaWpJZVdsb2FkbGFpMXpKSE1STzh4YTI1RXpU?=
 =?utf-8?B?c3NzRVJEejVUS2RDMUI1WjlDL21HLzhIREtKTHFTMFZNdUlhN3JXSnZWYUta?=
 =?utf-8?B?bTUrRnlLd2FWUVM2S292L0xNTzU3dCtTT1p0RHJsbDFxQjFWaTBSNmliTXRW?=
 =?utf-8?B?NHd0YnFUdDl6MDhyckdtN2dlTVpjZEdjQkg5VjFJNkNXbFc3UDhhaGZNQW1I?=
 =?utf-8?B?aWJjU2tDV1g2VURoMEpVaUxJNmxFc21FQ3FxM2hDT0dYaXJ0dWJVY3VSemxr?=
 =?utf-8?B?SUN5WkJBTGdhQXpCNEdhVmtRbU1RdUc1SHBVelE0czNRSHROV2hCR0k0TWFo?=
 =?utf-8?B?ME93c1lhNE56ei84ZVpLNlFjR0l5R3pXbTcvQ2lSSit3M0VMY0Vpa2MwZXRZ?=
 =?utf-8?B?ZGxOTVByWHFMU3QzdlJybXoyOUJ6SWR5cGdQeFg5Q2VwcENLZExmOFN5M2FR?=
 =?utf-8?B?MzF2ZHVFNjRFRzd3dmlqSFZ3b3Q5NUVMUWlIbjg0ajZCVmQzL0tWa0pJT2lC?=
 =?utf-8?B?RFVtakxoUHZoM0VBbTIzWjVTdldhMjJBNkM3emJhdGp3LzJzblNpQzk3dFhH?=
 =?utf-8?B?ODcvMzNPbkVrZTY3WnJRQjZPWkc5cXBwY0pwUnpvcENMTkd5Vk9pRTR2Yzha?=
 =?utf-8?B?VTUyVTJKOVJnQXBzKzNYMU52eGJJeFpKQWpRMEwxeENsa3lMd2ZWUzNnVEI5?=
 =?utf-8?B?VEZIWmRudmNJbXNnNXZ1Z3lwWWp3YkFSdUplYk44L1FkYlpRSEF2RTV4SWRW?=
 =?utf-8?B?REtUY0k5b2N5dGdHMWZON0trSzZHZ0RKKzRTL3pTbFBzd2J6dkdqM0FsODc3?=
 =?utf-8?B?UnpzSyt0c3V2WTNLZHd6S0FBRDlOOTFSeGkvdjFEQnpyQXoxRVFWQjJKMDkv?=
 =?utf-8?B?Si9SdTVwcDdONzBPcWJjV0dtSnd4Z3ZRd2RLWHBtVy9oejRTbU43WTllaHBx?=
 =?utf-8?B?NVhnQlhBL2N1M09mNWtuTUtWOUVwazJEenkwYXV1NFBrdm5uVGx6UXhZS2Jq?=
 =?utf-8?B?Q3EyaUVwMW52ZExDWURxc0lVZ3Q0eFVZS3VNc0hmWU1SdEl4aFNObys0Tzdh?=
 =?utf-8?B?ZThYbS9tdW9TeThtcERULzNuUndvV0x6K1hIMFJtUTVPa1FHUGo5d2tzakV5?=
 =?utf-8?B?T0N5Sm44d2NKb3ErZys0d3lEbGgyd2RGWVdwYi9DVlFmY25TZm8vZVFSRld2?=
 =?utf-8?B?dys2cFJpODZNRjJxNFQrL1NUUndiMnJGYWJYVEhLQnZoZDd2aXlTN0VmRXFE?=
 =?utf-8?B?NWNuMGpma1A2NzErUE55VkJpQndldnI5UGMzbWhzZXI1Uy9XTFk0K3h6NERL?=
 =?utf-8?B?elpiVk1Kc3ZycEZhTjREZEdCd2thcGsweU9EaFlrUkM4S3RvWHNsK0VoRjBB?=
 =?utf-8?B?Z0tETWtVWUcwNzNhY3FmU3hIOVNnOG1IdWxBUEJDUmM4TzV5YmRSenhkaEx1?=
 =?utf-8?Q?bdcFN7h+chjjLe7faS6b88M=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	=?utf-8?B?U1pKKzU0Y0hCdE5aVUZOSkEwSHZ5Y1Y0YU04T1JWNDdKVFV6eTh1NTQ1WSt3?=
 =?utf-8?B?T0IyU1hsMFg1b2I3ZEpwaW9MaDFFOTdjb2NSZVhFNmt6TnlwVGtEQ2JWdXN4?=
 =?utf-8?B?MHJxamM1SzRqSU5SMEFJK3V1ZVhiSThOQmRYTStxUm9SUGF6TDhISkVmY2Zi?=
 =?utf-8?B?YmJ5U0xoekw1QWQxVUVPRm1hNGV6K1QvZTdCUEY2T2NkeE1zaVFPcno1bnFJ?=
 =?utf-8?B?ejhFaGlTWWJSbm1KcEVCOStqekFkenZFSjc0YnhkdXVrRUF2N1k1ZXJLaUZZ?=
 =?utf-8?B?YWs1QXBRWHIxZjJaMkdoSklPYy92RGU2TkNOczNkeTB5VTBUSUR2NFBnNW5o?=
 =?utf-8?B?S2N6RTM1R0RpSElkWHRrNXpXMm5WSUpoTStmZ0dTMW84S3NBMXRscDdGME15?=
 =?utf-8?B?dXdqN2w2Z21udUw0elo3M3luNnRRdlFqRVpCYTlXYkIzQytJNkR4aFlycmFH?=
 =?utf-8?B?L1ZTMTdSMytLWmlQQnQ1L2hmVVRkUy95dm01bXZhNWQ4VzJyZEdqQW5FSWNr?=
 =?utf-8?B?bWhsbjVpSlNhd3pjU09LaWZnZGhwQm9VM1g2a1hLRHJ4Z1lHeC83TzdqMk8r?=
 =?utf-8?B?K0hUeXZKTzJJMXIwSWlPTFlFR3pQNnVoalZSRllFbjZWNW1MTEpTWEtGd1dT?=
 =?utf-8?B?akZFNmFGQWRoRmFmUi9GSkY1MnR0cG9yb1h6di9iR1lTeFhUaGtSb1o2M0N0?=
 =?utf-8?B?NFp1clo4SlZ0OGx4NHFqM2VPUFk4cWttNWtXMHdVSmZqNzJYVExLNTRSYVpT?=
 =?utf-8?B?OWpiaHpoUmw1QTZBamF2T2NIQVlyUVJzQjdYM0tjUmhjaEY4RVBQS05MTDVE?=
 =?utf-8?B?bU9iaVJUdGtzWmxmQ2xRbEtJL0xVOHRheUJCQU5OMWpzV3YxNjJRVmt4cVFx?=
 =?utf-8?B?TjhZUU5qV3k1S25VVFZOWS8rZ1dYSDRhR1M0QjBLMWNFbExlUnBISnRqVHph?=
 =?utf-8?B?UzRpZ2xVODB0OGtLQi93RFNmWWY1aWh2Z3ByOE5hbWErQ20vTEdwMUlFdXVO?=
 =?utf-8?B?US8zS2pmT3RJbk9RL2NXMkxFMEozS0NCenphWmNFMWNFdjdnK1pEV0JIY1RL?=
 =?utf-8?B?Ny9qbnFadnJIT3loM2tLSUhNK0xmUVByclVEZkxNM2hHd3lWeThYalBlbWNI?=
 =?utf-8?B?b2xyTkk1VzVTaTRmQk1WVkdBL2YwVzhSM3dDMEZ4cmFOTWptb2lTYUIxWG5x?=
 =?utf-8?B?ZERMS2hoRHQ1Rll2QnBFVFZ2TmtpRlZHeFNTdXNQejZqN3lHMndzNzhYY3Z1?=
 =?utf-8?B?dDltRjhCajJHck8rRzRDYXdkNGdkWFlBRWdxZlpORzkyMU0wSlBQUnhOZkM4?=
 =?utf-8?Q?WAFZPcD69ekx5MB2g44vnt0kXvgqtNhvOk?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 205a3de0-2e85-4a59-333b-08db1b63c1fb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR10MB6798.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2023 21:19:07.4172
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GNbVKoQ6FGbZdZIynnlRxLQoOmNKvXPl0kfMiNukNrQ50T9FcDpSTBByKWwOlh/MS612EXN5OscWH0bf3k7EQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5819
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-02_15,2023-03-02_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 bulkscore=0
 malwarescore=0 mlxlogscore=999 phishscore=0 spamscore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303020183
X-Proofpoint-GUID: EHmampEGPhka2z2ae0OkXAX36BRPTIkS
X-Proofpoint-ORIG-GUID: EHmampEGPhka2z2ae0OkXAX36BRPTIkS
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 998253E920
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[oracle.com,none];
	R_DKIM_ALLOW(-0.20)[oracle.com:s=corp-2022-7-12,oracle.onmicrosoft.com:s=selector2-oracle-onmicrosoft-com];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.165.32];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:26211, ipnet:205.220.165.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	DKIM_TRACE(0.00)[oracle.com:+,oracle.onmicrosoft.com:+];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[205.220.165.32:from]
Message-ID-Hash: BHDIBTHMEMBM2RAXQ6B4QS7X6SAWU2TY
X-Message-ID-Hash: BHDIBTHMEMBM2RAXQ6B4QS7X6SAWU2TY
X-MailFrom: nick.alcock@oracle.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-modules@vger.kernel.org, linux-kernel@vger.kernel.org, Hitomi Hasegawa <hasegawa-hitomi@fujitsu.com>, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 12/17] udmabuf: remove MODULE_LICENSE in non-modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BHDIBTHMEMBM2RAXQ6B4QS7X6SAWU2TY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2luY2UgY29tbWl0IDhiNDFmYzQ0NTRlICgia2J1aWxkOiBjcmVhdGUgbW9kdWxlcy5idWlsdGlu
IHdpdGhvdXQNCk1ha2VmaWxlLm1vZGJ1aWx0aW4gb3IgdHJpc3RhdGUuY29uZiIpLCBNT0RVTEVf
TElDRU5TRSBkZWNsYXJhdGlvbnMNCmFyZSB1c2VkIHRvIGlkZW50aWZ5IG1vZHVsZXMuIEFzIGEg
Y29uc2VxdWVuY2UsIHVzZXMgb2YgdGhlIG1hY3JvDQppbiBub24tbW9kdWxlcyB3aWxsIGNhdXNl
IG1vZHByb2JlIHRvIG1pc2lkZW50aWZ5IHRoZWlyIGNvbnRhaW5pbmcNCm9iamVjdCBmaWxlIGFz
IGEgbW9kdWxlIHdoZW4gaXQgaXMgbm90IChmYWxzZSBwb3NpdGl2ZXMpLCBhbmQgbW9kcHJvYmUN
Cm1pZ2h0IHN1Y2NlZWQgcmF0aGVyIHRoYW4gZmFpbGluZyB3aXRoIGEgc3VpdGFibGUgZXJyb3Ig
bWVzc2FnZS4NCg0KU28gcmVtb3ZlIGl0IGluIHRoZSBmaWxlcyBpbiB0aGlzIGNvbW1pdCwgbm9u
ZSBvZiB3aGljaCBjYW4gYmUgYnVpbHQgYXMNCm1vZHVsZXMuDQoNClNpZ25lZC1vZmYtYnk6IE5p
Y2sgQWxjb2NrIDxuaWNrLmFsY29ja0BvcmFjbGUuY29tPg0KU3VnZ2VzdGVkLWJ5OiBMdWlzIENo
YW1iZXJsYWluIDxtY2dyb2ZAa2VybmVsLm9yZz4NCkNjOiBMdWlzIENoYW1iZXJsYWluIDxtY2dy
b2ZAa2VybmVsLm9yZz4NCkNjOiBsaW51eC1tb2R1bGVzQHZnZXIua2VybmVsLm9yZw0KQ2M6IGxp
bnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBIaXRvbWkgSGFzZWdhd2EgPGhhc2VnYXdh
LWhpdG9taUBmdWppdHN1LmNvbT4NCkNjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNv
bT4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6ICJDaHJp
c3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNj
OiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi91
ZG1hYnVmLmMgfCAxIC0NCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQ0KDQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVm
LmMNCmluZGV4IDI4MzgxNmZiZDcyZmMuLmQ1YzA5YTg2ZGY2YzEgMTAwNjQ0DQotLS0gYS9kcml2
ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQpA
QCAtNDAyLDQgKzQwMiwzIEBAIG1vZHVsZV9pbml0KHVkbWFidWZfZGV2X2luaXQpDQogbW9kdWxl
X2V4aXQodWRtYWJ1Zl9kZXZfZXhpdCkNCiANCiBNT0RVTEVfQVVUSE9SKCJHZXJkIEhvZmZtYW5u
IDxrcmF4ZWxAcmVkaGF0LmNvbT4iKTsNCi1NT0RVTEVfTElDRU5TRSgiR1BMIHYyIik7DQotLSAN
CjIuMzkuMS4yNjguZzlkZTJmOWEzMDMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
