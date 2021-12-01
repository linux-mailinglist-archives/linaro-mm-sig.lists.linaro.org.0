Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0C2464BAE
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Dec 2021 11:32:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84CA061158
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Dec 2021 10:32:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 18074602F3; Wed,  1 Dec 2021 10:32:24 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E8D560E24;
	Wed,  1 Dec 2021 10:32:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 47677602F3
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Dec 2021 10:32:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 453B560E24; Wed,  1 Dec 2021 10:32:19 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2044.outbound.protection.outlook.com [40.107.92.44])
 by lists.linaro.org (Postfix) with ESMTPS id 2B507602F3
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Dec 2021 10:32:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SrTc5EWVmeQCC1C1uia8cJHxco4xiukyu1SOt+qK1it5u7zuIg1iyhTvDnjDQlXoxlYgKsSA/pA1DCwim43B9yymSUE+ubukmTHbMXDb/b+OoqPOmODdcVm4ocwv/96PaSw9atSF/dCcj3EKzFf9oxDdx7mIfd2akXJKBg6h25hqUadG8nafKfZFkQQ3PZjrKEKcncNWOljzIkO4SQaWkOZDIs+16G2/7Q8EBLX0iYB/sfMJx47UUxY4yLxkwJodsEVzvSpTLsSlkc37jspAj9jPGmHBetshKN1/bFC2VaUtW/Mi3WzYXmQdT6h5S4E4zBdOubgvdEWKIhTfFmNplg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aUu9y9agBHgY1B2Oz70+jMcaOE/5QusuhkNfZNeDn3c=;
 b=CyhKbg2cHw7MIgbdFFOtXIHJQWyRimyB39Um5CcANJthHpxfOfuF5+7kre8yfENj2Pl/9yiGvY0xrjxJV7zXnGvSrWgBbbSweVNYwzJ08LEP82bFlpK8h5X2q7oI6sQ6MSic2ZOt4h3vWx36yT3j13ZRP6ZjuXcigM19ZfVDIZNurGGLb0KmXFTT2Zn1bEjMhjx5GxI7WKB2pS2gBd1I98wCsP8DqtZjlWrq+xO/k/SOrhYi0Q2iBk7tyzZJsUcEI13L1Nqkb13nyiXr+eaT0ixkApCqPq87BAOUH8myr7BnNveLTHg4fNpphMiGJjaS6ggy6H0rOk5iVVjkAA289w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aUu9y9agBHgY1B2Oz70+jMcaOE/5QusuhkNfZNeDn3c=;
 b=mWHdVmKI0HR/PpCvzn+BOfNXpzIIRrnD/TzTV4H+RZIvQ3GMfqd0aFoyF8uLvMI6mQdcJVdTZwVJPIhh55enUA53979KYWRv+gZ8888Q8cuBzGyhej6DBrf+TYU6pYezgHnJFnOe1wFnxbma2R//B+a2uc91t2e7XnBsDo1FCSM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com (10.174.101.14) by
 MWHPR1201MB0191.namprd12.prod.outlook.com (10.174.99.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.22; Wed, 1 Dec 2021 10:32:15 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769%5]) with mapi id 15.20.4713.027; Wed, 1 Dec 2021
 10:32:08 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20211130121936.586031-1-thomas.hellstrom@linux.intel.com>
 <20211130121936.586031-2-thomas.hellstrom@linux.intel.com>
 <c7502701-e85c-39f0-c249-702d029faa9e@linux.intel.com>
 <b440cfbc-2b9a-1aa2-76d6-17337f835777@linux.intel.com>
 <52a7cf8c-59c7-fec0-2274-d19bdc505314@amd.com>
 <57df8b0b-1d65-155f-a9a6-8073bbd4f28f@linux.intel.com>
 <2551da4d-2e51-cc24-7d4a-84ae00a1547c@amd.com>
 <29d096c91d720fbe5d410124580a02b663155b56.camel@linux.intel.com>
 <250a8e47-2093-1a98-3859-0204ec4e60e6@amd.com>
 <712b54fa1c09ae5cc1d75739ad8a7286f1dae8db.camel@linux.intel.com>
 <49cf2d43-9a8a-7738-0889-7e16b0256249@linux.intel.com>
 <193e36bd-ba64-1358-8178-73ee3afc3c41@amd.com>
 <c9109ec6-4265-ba8f-238f-4c793d076825@shipmail.org>
 <d1ada94c-88d3-d34d-9c51-0d427c3aca06@amd.com>
 <7ef3db03-8ae2-d886-2c39-36f661cac9a6@shipmail.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <4805074d-7039-3eaf-eb5d-5797278b7f31@amd.com>
Date: Wed, 1 Dec 2021 11:32:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <7ef3db03-8ae2-d886-2c39-36f661cac9a6@shipmail.org>
Content-Language: en-US
X-ClientProxiedBy: AM0PR03CA0011.eurprd03.prod.outlook.com
 (2603:10a6:208:14::24) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [192.168.178.21] (87.176.183.123) by
 AM0PR03CA0011.eurprd03.prod.outlook.com (2603:10a6:208:14::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.22 via Frontend Transport; Wed, 1 Dec 2021 10:32:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aa9edb0a-032d-4b9d-6a9a-08d9b4b5d3d7
X-MS-TrafficTypeDiagnostic: MWHPR1201MB0191:
X-Microsoft-Antispam-PRVS: <MWHPR1201MB0191CA5A3F72DCF0E4C673BE83689@MWHPR1201MB0191.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZpVcleBxnna7z/cnINtSC1MAuzQLoCVG2CM1ssvcyF5nrH33pUElcfnILJv5j7Om6IGBOQ1LIquh4AiQGfoJpDii+dsKgm8lkamqzBAr3cLwqJJhEhZtKntPpZtAC4pO1pPzNtjyuodnifGxRcMo5aQSp/xysetGtBhBtGA3uLZH1u7F5dNhZ3/YEIna7MlX7uerUvz4WY2zSv5lYZuone5h/mAawECG6SpJlC2mxDhD8GoWe1GrAWyn0ppTTN6wrJggVQSPP2AF91PF8oGMJ3wfq6hpMlLFNTj1io02+2L+LJG3NJn1hV7lGYDlzNyQbH3cQikc66hMQmMuKinghRBS1FvvFGkSNwJ39GGxb6ci0hW69lVVhdbxtoMwwvfny+G7ZOwjImxshhQoJkIC14m5rNBR0Uhg6/01EEV24xWkQ5Cykjlul6JutCnuJuocPpFWVCY5ZhqTBttjod2xRN9SgbuaPT+Yocn+N3eNC+ITiFSirkg2UPccuZVeNtULNRx2RvC5fRN5kLFJ+bR85lkCiKc6JnfsyvM/FwI/XPS8WC6aWkLlViFiXnUxeRwyoFNiuWCdRESsNbr2I6dogaJGCqs1+uD2WuxvbKWJ1aQRZ8uR8JNsF3FjWDh03ONnUA9twkhSAiF/sJRLM+e2FiEZ4Qy4kDOLS4go0eAu9jQcDIvsWlqRlqSzREGmMqhrJNhztxu8UZB5Gevmvk/s9PRYUi/+M1N4m5ndKkU2OiQNsx8sUGzi9+d7mmv5T4CK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(31686004)(4326008)(8676002)(86362001)(26005)(186003)(508600001)(83380400001)(36756003)(2906002)(5660300002)(316002)(16576012)(6486002)(956004)(66946007)(2616005)(6666004)(8936002)(110136005)(66556008)(66476007)(66574015)(31696002)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aXdlVHVlYlhhckxLK1Z4YlFjTERIeTA3WU5WTk05ck5RUnFFcHM1QXpIZjVq?=
 =?utf-8?B?MUt6dkoyeTFOZlBxRmQxT05TR2xRTHZPYXFLbHUwYTdzQlIrRm52Y3lMMnU1?=
 =?utf-8?B?cGVYc0Yza21ZUXdmdDRyZnArVUIwb2MrQzdrbXNCNlJnRll0YzVDcGlOeVFy?=
 =?utf-8?B?OUFBN3M0ZUoyK0Z6NzJjSnkxaHgxM3dwSnBZZzEzS2YxQkpSNGFsR2RSTThX?=
 =?utf-8?B?Y3NtaytnSEhXMjkzL1Mybkk4RjU0WkdkZFNiV1hyeFBHZWF6NkcxNlpqVWdo?=
 =?utf-8?B?eVFaWHlwWmRiSDU1Wlp5UFMyZS85MkRRbUJMQVJNYzRJOWt1Qmk5QjQxdzhB?=
 =?utf-8?B?YXFoV3VZdWZtc2hhVGZwN1prQjAxY0Ftc1p3Njh3N3crQzFERmxZaE9MOWlp?=
 =?utf-8?B?UDFHMHY3cFY5SU1xNUQ1OGtjaUU1M1cxZTVXZ09hTkg3V1ozNXFma3E0NXEw?=
 =?utf-8?B?QVhhWUxqa2R6UERLc0pUVzhRaXBETTcrdEpmSzJ5bDd4MHpNNWpGWURvMlBM?=
 =?utf-8?B?RzY0MG5iODdDWmU0OExjN2FvQ3BJWnBnR2dpR0JmQjI2OXE4UFNRYzFneEtF?=
 =?utf-8?B?WmFyQ0dQZEcwYmxLMU41R25mWGI4YTBYZ3hjd3NXQXJ3VnMxMGVOcUdtZWI1?=
 =?utf-8?B?OTZTUXNSaHQwVHRzWEFBSFZkYXFqZTl0QXk3WitzSEc4ZWhGcGk3VWRQa1Fy?=
 =?utf-8?B?TnJCZ2NlbkFSVWxNN1ZIVERUVFpvdkVHY3JpdzVQS1EyR295elR3Uk91cjZY?=
 =?utf-8?B?ZGdyUTh0bEE0VDVNbDF6MjN2SFI1RHl6RnlwdXgra0k4N0ZIWDU0WWVEOFVa?=
 =?utf-8?B?TnFpNVdSa0dOSHo2SzVCcWtiVHp3am0vdnB1YzRDdDVUZC83dlcvcndYNFRp?=
 =?utf-8?B?T3RHK05ET3BJdXJINUl0cmlYQmN6dVZOSTNNNlpYTDhBbThoTzVlUDhRMGtl?=
 =?utf-8?B?akpuUVNLUEFObk04OWQ2N3hPTURGMmhNWkVxSEh1OXRQcDBhVStuWXNTSmlX?=
 =?utf-8?B?d0tteldZNWUrbDIrQlQ4ZGhabVdXMjJZNnZvT1cyVHBrUHgvUDNpMVR1UXBP?=
 =?utf-8?B?UGF0VE1kakJjdnJFa3dTVjdaZVNJb2VBeHB3Z2VsblRrNU8xSDBnYitnTDFQ?=
 =?utf-8?B?QzJ3ZUpLLzNxblpYd05MUFcyc0Jkb0k0aSsrN0JqWlM0WGoxSVFDU3dyTG0x?=
 =?utf-8?B?R3MzVnI4T0hYaGduc1JnV0tYTnVvY0FxZ3B6MHBMQkE1dHJtVU4yOUxQTnRN?=
 =?utf-8?B?YktoTFJuZkRYWmdya3VZVXNibXBucktZaE1hWUY5aHdBb3VKSWZhaUlGMk5C?=
 =?utf-8?B?QmFxVzhBdC8xbmpJNHIzeFlXOEpITjJUNkNMY05ib1lESzUvZktmVXVmTFpH?=
 =?utf-8?B?RHhBL3VGMk9OcnlUY201ZEVKbzk4cVJyS1poa1gvR2xTNGl0aks4L1pxbFdN?=
 =?utf-8?B?emNMYzRBSnl2bmhtWW80OGlZc3B0eTZ4NzJGcHo0U1IwVGw1R0N2QSs4VjZF?=
 =?utf-8?B?ZnFxQXJGWFh5ZDBzd1l3NFhObXNSZHNjZHVzOFVxSk9vV0ZGbTlxN3VHT1BF?=
 =?utf-8?B?aDk4K3FMVDZKODNTRk9JeGc3U1lmVlVrR1dVTHZpUlZQNnUwMVJjRE9vOFN5?=
 =?utf-8?B?Q3piV242cUNuRFFic1VPbitmL3prK3lYa1BSeDBuRDhNYlRHUE85eTZUcXBW?=
 =?utf-8?B?WTgwUStpcFNYQVBqWXRKUFI0dHVsOVNSTXlkRmlSV0psMmo3WVU0bkhLQzVO?=
 =?utf-8?B?Wk1DTDRZSGxPVnVzQXlFcHh5dDBaRm41SEVuWVlQempPL3FodHM3Q2w1NnZs?=
 =?utf-8?B?QzhaNDA4akdwSmk5b2lURnZ1ank3cUlPZEliM2Uzanp0c09uYm9PQm9zYkZk?=
 =?utf-8?B?SVpPRnJPUUZ4YlpOTkRSemVDMXZaRnd5SSswVjFZK3JJdTlCWTVmTnJtTW5Y?=
 =?utf-8?B?S3Iwc1JGOU9mT0pTSlVzbEtZSU9aTTlIYmNOSk5Sak1XL2tWNDU0WmFzRG1M?=
 =?utf-8?B?TGNVWkszc0R6OHAvblA2QXpWOHpZU2ZIMEc0Q3NjNmRNQzh4T0dMT1dIUURD?=
 =?utf-8?B?RFFUODB5Wi9sVWM5SEZyd1JwNWpCdzE0YU1ERmR6d2xzSmd0QzZNQmp1Q2Nq?=
 =?utf-8?Q?LKjk=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa9edb0a-032d-4b9d-6a9a-08d9b4b5d3d7
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2021 10:32:08.7495 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fDS81bEY7I8AD5YMhyH3N6qkUoCRObJcWILngXLge3OtPFGRSJdIow17dNtjDQw9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1201MB0191
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC PATCH 1/2] dma-fence: Avoid establishing a
 locking order between fence classes
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linaro-mm-sig@lists.linaro.org, matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDEuMTIuMjEgdW0gMTE6MTUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpOgo+
IFtTTklQXQo+Pgo+PiBXaGF0IHdlIGNvdWxkIGRvIGlzIHRvIGF2b2lkIGFsbCB0aGlzIGJ5IG5v
dCBjYWxsaW5nIHRoZSBjYWxsYmFjayAKPj4gd2l0aCB0aGUgbG9jayBoZWxkIGluIHRoZSBmaXJz
dCBwbGFjZS4KPgo+IElmIHRoYXQncyBwb3NzaWJsZSB0aGF0IG1pZ2h0IGJlIGEgZ29vZCBpZGVh
LCBwbHMgYWxzbyBzZWUgYmVsb3cuCgpUaGUgcHJvYmxlbSB3aXRoIHRoYXQgaXMgCmRtYV9mZW5j
ZV9zaWduYWxfbG9ja2VkKCkvZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKCkuIElm
IHdlIApjb3VsZCBhdm9pZCB1c2luZyB0aGF0IG9yIGF0IGxlYXN0IGFsbG93IGl0IHRvIGRyb3Ag
dGhlIGxvY2sgdGhlbiB3ZSAKY291bGQgY2FsbCB0aGUgY2FsbGJhY2sgd2l0aG91dCBob2xkaW5n
IGl0LgoKU29tZWJvZHkgd291bGQgbmVlZCB0byBhdWRpdCB0aGUgZHJpdmVycyBhbmQgc2VlIGlm
IGhvbGRpbmcgdGhlIGxvY2sgaXMgCnJlYWxseSBuZWNlc3NhcnkgYW55d2hlcmUuCgo+Pgo+Pj4+
Cj4+Pj4+Pgo+Pj4+Pj4gL1Rob21hcwo+Pj4+Pgo+Pj4+PiBPaCwgYW5kIGEgZm9sbG93IHVwIHF1
ZXN0aW9uOgo+Pj4+Pgo+Pj4+PiBJZiB0aGVyZSB3YXMgYSB3YXkgdG8gYnJlYWsgdGhlIHJlY3Vy
c2lvbiBvbiBmaW5hbCBwdXQoKSAodXNpbmcgCj4+Pj4+IHRoZSBzYW1lIGJhc2ljIGFwcHJvYWNo
IGFzIHBhdGNoIDIgaW4gdGhpcyBzZXJpZXMgdXNlcyB0byBicmVhayAKPj4+Pj4gcmVjdXJzaW9u
IGluIGVuYWJsZV9zaWduYWxpbmcoKSksIHNvIHRoYXQgbm9uZSBvZiB0aGVzZSBjb250YWluZXJz
IAo+Pj4+PiBkaWQgcmVxdWlyZSBhbnkgc3BlY2lhbCB0cmVhdG1lbnQsIHdvdWxkIGl0IGJlIHdv
cnRoIHB1cnN1aW5nPyBJIAo+Pj4+PiBndWVzcyBpdCBtaWdodCBiZSBwb3NzaWJsZSBieSBoYXZp
bmcgdGhlIGNhbGxiYWNrcyBkcm9wIHRoZSAKPj4+Pj4gcmVmZXJlbmNlcyByYXRoZXIgdGhhbiB0
aGUgbG9vcCBpbiB0aGUgZmluYWwgcHV0LiArIGEgY291cGxlIG9mIAo+Pj4+PiBjaGFuZ2VzIGlu
IGNvZGUgaXRlcmF0aW5nIG92ZXIgdGhlIGZlbmNlIHBvaW50ZXJzLgo+Pj4+Cj4+Pj4gVGhhdCB3
b24ndCByZWFsbHkgaGVscCwgeW91IGp1c3QgbW92ZSB0aGUgcmVjdXJzaW9uIGZyb20gdGhlIGZp
bmFsIAo+Pj4+IHB1dCBpbnRvIHRoZSBjYWxsYmFjay4KPj4+Cj4+PiBIb3cgZG8gd2UgcmVjdXJz
ZSBmcm9tIHRoZSBjYWxsYmFjaz8gVGhlIGludHJvZHVjZWQgZmVuY2VfcHV0KCkgb2YgCj4+PiBp
bmRpdmlkdWFsIGZlbmNlIHBvaW50ZXJzCj4+PiBkb2Vzbid0IHJlY3Vyc2UgYW55bW9yZSAoYXQg
bW9zdCAxIGxldmVsKSwgYW5kIGFueSBjYWxsYmFjayAKPj4+IHJlY3Vyc2lvbiBpcyBicm9rZW4g
YnkgdGhlIGlycV93b3JrPwo+Pgo+PiBZZWFoLCBidXQgdGhlbiB5b3Ugd291bGQgbmVlZCB0byB0
YWtlIGFub3RoZXIgbG9jayB0byBhdm9pZCByYWNpbmcgCj4+IHdpdGggZG1hX2ZlbmNlX2FycmF5
X3NpZ25hbGVkKCkuCj4+Cj4+Pgo+Pj4gSSBmaWd1cmUgdGhlIGJpZyBhbW91bnQgb2Ygd29yayB3
b3VsZCBiZSB0byBhZGp1c3QgY29kZSB0aGF0IAo+Pj4gaXRlcmF0ZXMgb3ZlciB0aGUgaW5kaXZp
ZHVhbCBmZW5jZSBwb2ludGVycyB0byByZWNvZ25pemUgdGhhdCB0aGV5IAo+Pj4gYXJlIHJjdSBw
cm90ZWN0ZWQuCj4+Cj4+IENvdWxkIGJlIHRoYXQgd2UgY291bGQgc29sdmUgdGhpcyB3aXRoIFJD
VSwgYnV0IHRoYXQgc291bmRzIGxpa2UgYSAKPj4gbG90IG9mIGNodXJuIGZvciBubyBnYWluIGF0
IGFsbC4KPj4KPj4gSW4gb3RoZXIgd29yZHMgZXZlbiB3aXRoIHRoZSBwcm9ibGVtcyBzb2x2ZWQg
SSB0aGluayBpdCB3b3VsZCBiZSBhIAo+PiByZWFsbHkgYmFkIGlkZWEgdG8gYWxsb3cgY2hhaW5p
bmcgb2YgZG1hX2ZlbmNlX2FycmF5IG9iamVjdHMuCj4KPiBZZXMsIHRoYXQgd2FzIHJlYWxseSB0
aGUgcXVlc3Rpb24sIElzIGl0IHdvcnRoIHB1cnN1aW5nIHRoaXM/IEknbSBub3QgCj4gcmVhbGx5
IHN1Z2dlc3Rpbmcgd2Ugc2hvdWxkIGFsbG93IHRoaXMgYXMgYW4gaW50ZW50aW9uYWwgZmVhdHVy
ZS4gSSdtIAo+IHdvcnJpZWQsIGhvd2V2ZXIsIHRoYXQgaWYgd2UgYWxsb3cgdGhlc2UgY29udGFp
bmVycyB0byBzdGFydCBmbG9hdGluZyAKPiBhcm91bmQgY3Jvc3MtZHJpdmVyIChvciBldmVuIGlu
dGVybmFsbHkpIGRpc2d1aXNlZCBhcyBvcmRpbmFyeSAKPiBkbWFfZmVuY2VzLCB0aGV5IHdvdWxk
IHJlcXVpcmUgYSBsb3Qgb2YgZHJpdmVyIHNwZWNpYWwgY2FzaW5nLCBvciBlbHNlIAo+IGNvbXBs
ZXRlbHkgdW5leHBlY2VkIFdBUk5fT04oKXMgYW5kIGxvY2tkZXAgc3BsYXRzIHdvdWxkIHN0YXJ0
IHRvIHR1cm4gCj4gdXAsIHNjYXJpbmcgcGVvcGxlIG9mZiBmcm9tIHVzaW5nIHRoZW0uIEFuZCB0
aGF0IHdvdWxkIGJlIGEgYnJlZWRpbmcgCj4gZ3JvdW5kIGZvciBoYWlyeSBkcml2ZXItcHJpdmF0
ZSBjb25zdHJ1Y3RzLgoKV2VsbCB0aGUgcXVlc3Rpb24gaXMgd2h5IHdlIHdvdWxkIHdhbnQgdG8g
ZG8gaXQ/CgpJZiBpdCdzIHRvIGF2b2lkIGludGVyIGRyaXZlciBsb2NrIGRlcGVuZGVuY2llcyBi
eSBhdm9pZGluZyB0byBjYWxsIHRoZSAKY2FsbGJhY2sgd2l0aCB0aGUgc3BpbmxvY2sgaGVsZCwg
dGhlbiB5ZXMgcGxlYXNlLiBXZSBoYWQgdG9ucyBvZiAKcHJvYmxlbXMgd2l0aCB0aGF0LCByZXN1
bHRpbmcgaW4gaXJxX3dvcmsgYW5kIHdvcmtfaXRlbSBkZWxlZ2F0aW9uIGFsbCAKb3ZlciB0aGUg
cGxhY2UuCgpJZiBpdCdzIHRvIGFsbG93IG5lc3Rpbmcgb2YgZG1hX2ZlbmNlX2FycmF5IGluc3Rh
bmNlcywgdGhlbiBpdCdzIG1vc3QgCmxpa2VseSBhIHJlYWxseSBiYWQgaWRlYSBldmVuIGlmIHdl
IGZpeCBhbGwgdGhlIGxvY2tpbmcgb3JkZXIgcHJvYmxlbXMuCgpDaHJpc3RpYW4uCgo+Cj4gL1Ro
b21hcwo+Cj4KPj4KPj4gQ2hyaXN0aWFuLgo+Pgo+Pj4KPj4+Cj4+PiBUaGFua3MsCj4+Pgo+Pj4g
L1Rob21hcwo+Pj4KPj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
