Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BC78B60439A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:44:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC6BE3ED61
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:44:09 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2054.outbound.protection.outlook.com [40.107.93.54])
	by lists.linaro.org (Postfix) with ESMTPS id DC7873E9D4
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Sep 2022 20:31:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DuMf1QipLUoRLwdHSjENxCrjcmbn/XBjxl9O53GZTk2BUyRacnG955SI/BWWDSOrru3nGgnAG6gjVU5yuFAwn35uuyDYQ2yYvttYtrpMQBjS2h3zk1+h3L32PKMxI1PjFEJx2FYbhguD6zaYjOCf4CuQ2KmiMIEp6e1+c4R+y0wLY0C7BycSY9nqLpKnh9qsX1A4F7gowIN7nPAThFnHHX5EJOJun/VU+U3KMZ4ZFeXGkab/QsWvQtExlbNSrannZhvarl7rTpUC3xdQajrrzpGtq6JJA9NsuvmUjcA8edCh4YQq4SImbPuo/gFC1dQKv/8hA4PnuTwE3FoVjqL7vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MN7HxcVYGzgmHDNlw/HKW7hxcKSMULlKBDyZFllRvJo=;
 b=fRWCjCm+/+gnKk4mVccHhQ3BvF0M1q/zRkDmWZ1X3D2fpTH8709f2S0w38/Gtppj8+73F8wG5e0hneHSXh7oOn7d2HcfEGhu+HHOFcp/2A7IkvjfhrOOsH+fVABALaq78irdkfcBEhkTIKd/ae/ogHMx3zZU53+h2dF00XOD20M4H8IosYDx2esE/Fadr9hWTrOlcTDvQPLgR1eCfp2us7C/mIGQhzsi58qyxdfB6GvwBzjpT674B9jLVGcvyd+EoQp+5o21Z6TEJS9uPdqvfh4LMQeVIcgwEN5MZJNw2OLU7+CRz11EfihokPWtD1QDrbTZooUeRSj9rYp2dQmwVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MN7HxcVYGzgmHDNlw/HKW7hxcKSMULlKBDyZFllRvJo=;
 b=MsVIyxUIkHs4VuyaTKhfVnC5F1t8CkzMlfVpsJJFHZ8OHUJzsW1sM7OA6OGI4iBjxpsXUgwNrANk4k1azmrSCIS+3u/zp7rSgh6yCvKUyy7rxHUenVHJswMuVnwL7Or16oZFt0YalRb9rPG08UAqQhgN7tMY2d+exrcPyO1Lekk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB6000.namprd12.prod.outlook.com (2603:10b6:510:1dc::15)
 by SA1PR12MB6726.namprd12.prod.outlook.com (2603:10b6:806:255::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.20; Fri, 9 Sep
 2022 20:31:07 +0000
Received: from PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::19c9:3fb4:80b9:cd4d]) by PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::19c9:3fb4:80b9:cd4d%5]) with mapi id 15.20.5612.019; Fri, 9 Sep 2022
 20:31:07 +0000
Message-ID: <b0b81d03-840d-bcf2-3593-5fc0079f1e6a@amd.com>
Date: Sat, 10 Sep 2022 02:00:54 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, Christian.Koenig@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220909170845.4946-1-Arvind.Yadav@amd.com>
 <20220909170845.4946-6-Arvind.Yadav@amd.com>
 <2937dc45-0b62-7c71-b846-942fa91cbb4e@amd.com>
From: "Yadav, Arvind" <arvyadav@amd.com>
In-Reply-To: <2937dc45-0b62-7c71-b846-942fa91cbb4e@amd.com>
X-ClientProxiedBy: PN3PR01CA0063.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::23) To PH7PR12MB6000.namprd12.prod.outlook.com
 (2603:10b6:510:1dc::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB6000:EE_|SA1PR12MB6726:EE_
X-MS-Office365-Filtering-Correlation-Id: ec168d43-f41f-4e05-651d-08da92a23952
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oDsWkSVdSwz5H+ublCff3P01zIXfyFyUkUi+FccE319DaqIJxd9ZaMb0rbP5PIg87HSPaAm1fBgFXbffQdwRV+EnxFIxLCBq8mjSaazhNghR6ley5vmJ4U+20qlS5fIUcAGncElaxlwjAyRs1261bsAUT2+2cbToWIY4Zpir6OIz+sK8zU8RFrlzdrE0VS2UPJioglmuGPoHe3ag7UIbVxJFIi8FLxEa7J/jXosDjlAIRdLuEPGQyvmyuiFooehVzqF1y2DVnPuIl8HfQDwT9H5VQKH4k/1jr5yd3TVku2m34mGEUtbk/U4HgR+DWt4hgZZqitfFM+uRDEFO9jVE+fXqR4R8Y53PxLE8TrQgci9K002d1jcBPDn6Paey+RVxdls7bin8EKa4yPeK99/aCG484L/kuAB8QBLH2vIDUOHxxYMyJsmZ6Mp7CJ2bGzRkUuqxdb3UAXjeMl9rK2od7OPlIculBpCvY1Y+UBmiDfc1VNwzREWRZckhilPYwsAlda5h15xtrl7JavM5gIYqojV8r/8Qmn7dSaf+/iDIDNSdzeOuosYeJxUdt0H7Zrn4zDFXF30HTiNe9eKhmBPeVYaAPLM8mnhpOMljAq4IwHBO7eER2x+nMpErMrFPy8HX3qxm4zFFzlU9Bsw9Pc4ScTvxq/GxcVS051hO1ZdgJAomzI6cnt8VpOEISu5a2KzGlM5y3OrC5OTzi2XCTu3XhcbFrX7+saew6Myq2EvQMwwiYj5rw/a7K1+/in7R+VDEtCuojPo5yeHQF258+B503utzBPZ0XsSJ+pH2ccO2PjS8pQ91iiCopE9uJd3m19GA
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB6000.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(136003)(346002)(396003)(366004)(39860400002)(8676002)(36756003)(55236004)(38100700002)(6666004)(41300700001)(53546011)(6486002)(6506007)(921005)(110136005)(316002)(478600001)(8936002)(2906002)(31686004)(31696002)(2616005)(5660300002)(83380400001)(66556008)(66476007)(6512007)(26005)(66946007)(186003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QUZoOWo5U3hhYUhjdEUrc3k1R2NCZWRWUUg5ZlBVZjh2d2t4R1BKOWhkcWpI?=
 =?utf-8?B?OVk4d0I2TnEvL0gzSmQyRmtZbENKdzRwMmFIQ2NnS2thMjh3aDNrcENRL29l?=
 =?utf-8?B?STB2OWpkV2hLdXpadm5lN2xmTTJIbTVPVzdacVZZY1VrYWdnMVFTdTFSUWNB?=
 =?utf-8?B?M0V2UE1CMHBoTWx2WFp3aWJIcVU4ZFRzaTM5WHp5K0M5VWFYS0k2Q0RjUy8x?=
 =?utf-8?B?Vm1RTmRQWmNBN09oaGgyQ0Nyd3UvVDNSZm1lbExCYmptRlJ0WDR2ZDVTelFS?=
 =?utf-8?B?SC81dCtoU1htNTA5RHVydmxhM2x5b3QvTHZUMm9yZUdpWUNoTUo4UmlqWjNy?=
 =?utf-8?B?N3UxR0czdnU3dnpuaFJTeVlvRjd2L1Q5QmRJMVQ3M2RZUzhKd1BkWTZRYnpQ?=
 =?utf-8?B?RTUwZWZvVTA5Q0VDRGp2WXJmR2toK05DQ2pXZXNmaXFFbHZBV0RWMEpFRWhX?=
 =?utf-8?B?Wkl3aFVYRmFXQmVZQmtoYjVRTXlOT29aMDgzSUI3Z2dpVjRXWEZFZXMvVWJY?=
 =?utf-8?B?N1plOGZqb0tQdG51ZjhtSFY3SFhVUEdmSVh6dFVLNTlOS0dVbytiNnJkc2Rq?=
 =?utf-8?B?OGR4T2J2NEJqZG1OZlhVRXZLQU1WekFpd0lpTHVHdlY2dTBkdmZmSWtHeTlu?=
 =?utf-8?B?VXoyOVNHbnFoTnptTCtQQkwwQlJQaGxYdWRGS253K0dxT25Qd0p5czRyZ1lF?=
 =?utf-8?B?NWExYXd5RkEyV0VINDR6S1cwY2lFcUtJWC9ONkVZMHlYZ1JBR1ladTVkaE5J?=
 =?utf-8?B?RytuY2xSMkh0R3ZWc0NycXBHNVdVNWRGSVIwdytNbzdZSFpEcUVET0d5V0FQ?=
 =?utf-8?B?bFVMQUljbzM3cEhDeUJYWU5YRFFyM00xSDZXQTNrbFNSVWRWdW03MGkyUGJK?=
 =?utf-8?B?dmhYaXBlRDI5dFRlVFl2L0gwaU9kMC84ZzlhS1dkVnM0ZGxnNTZZbUFpTnUz?=
 =?utf-8?B?eDAwZXhVdTZBWlJQMTl4VmNmcmxzRE5WbSt4NERPSWozVG8rV015Rk9HQUNE?=
 =?utf-8?B?V1JKVG5tdkM0VWlDVGR3dVhERUZtL2JRSHNkdE1DaDRmTTloZXBFZTZBM0cr?=
 =?utf-8?B?QkdVVGZXY243YlBGN0V5WWEwR1k5MEhsd1BmaEt5bWpxQzVCYkxVRVZDZXlp?=
 =?utf-8?B?bkRPV2VCbVJTZ3ZBRWE4blRYMHVsUnlsY2UxRlluNGhHOW9QV0NSMzdMdmJN?=
 =?utf-8?B?NkRZc1dmd1dqRHFXRGJMaldRa0lRTFJtNWFKWUd5d2c1di9yeTF6TVY0bXZi?=
 =?utf-8?B?Y0FkTFprSEppOFR3QWtvcGJMM1ppOHhTN1ZpdUV1dmh1RXVDcUtnVmxJTVpz?=
 =?utf-8?B?L2Z2ZmIwcis0VVJwR2l4di9hL01EYnhuUmhrb0Fmb0MzNjhBSjFxVTdTRHdU?=
 =?utf-8?B?NHV2cHJqN3NhRmNCQnlkdXlzdVZFMDVJb0NzY0w0M3paUlRObE5Wc3BWRHhx?=
 =?utf-8?B?L2dxWGo2aEdnOXNDQzlIOUFsWFlhaXp5R3NmOHFWbmZpQ05QeFRBbUc0Y1F1?=
 =?utf-8?B?Rk1panRveFFpMGxmdVRvNk1ERnZHQ3Jub2h4NnhNRXhYQ2RDZCs2djRBSWha?=
 =?utf-8?B?bHZtQ091dys4Uk1RVXZ4SlZyNzBQSEU5WEc3QjFkYTFQa3grd0J2VUdBelg4?=
 =?utf-8?B?R0pHRW1icm82eGlLcEJFQXpsZ0xxYS9MakR4TEtkQjZ4Q09ENFFEMDFpNUJQ?=
 =?utf-8?B?QTd1MExYWnZ2QmF5SkNTTUVLWkpBZ3J6YlJicWdpclhtSm9DUzk1MjBEcHhn?=
 =?utf-8?B?SWNpTDdFNzVPbUpzNjJxeXlaVjVoNkRBaFNtd00xSDV2OGJxTU9FNjVzdHFU?=
 =?utf-8?B?ckFKNlpMbWExZUdKeEZUR0UrU0wzVm1UN1dJVkVBSjRvYXpoZi9QQVFzSUhX?=
 =?utf-8?B?eGtYWDQ4YUg3WEs4RjlsN0pKNlh3UitORUNIQTg4cmJ1VjNKWGJrUGt1NXJo?=
 =?utf-8?B?MVR6anYyMlBjeWd1bXc5SHlDcVdya2lsTWlqT2hzTVZvNkFUcGlpZEt0L1N4?=
 =?utf-8?B?R3RHMUVscGVBTU5qVW1ZT2xkYzRTNHA4VVpCRENtL0ZnMC8yeVRQRW9Ic2xv?=
 =?utf-8?B?eXVobEVPV0U3Vm9vdzNJL2g5SEVmZGdRbE9iSFIzbTl0b1RIV1IxbjUwQ2lk?=
 =?utf-8?Q?hLsjjrOzQu8EwnUTlnRPtXBVk?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec168d43-f41f-4e05-651d-08da92a23952
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB6000.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2022 20:31:07.4322
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UXD373CwCM7gG8yKQnN5EGDHMCE/gCCYsZMAwBvuU3SVmestcOBuNFNpOGbLkAJEKuFnQKk0NEKr/eI6Rx4KMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6726
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2U6YJFVDUNHVYA6C7O7ST3KBVN2W6K7A
X-Message-ID-Hash: 2U6YJFVDUNHVYA6C7O7ST3KBVN2W6K7A
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:38:21 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 5/6] drm/sched: Use parent fence instead of finished
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2U6YJFVDUNHVYA6C7O7ST3KBVN2W6K7A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA5LzkvMjAyMiAxMTowMiBQTSwgQW5kcmV5IEdyb2R6b3Zza3kgd3JvdGU6DQo+IFdoYXQg
ZXhhY3RseSBpcyB0aGUgc2NlbmFyaW8gd2hpY2ggdGhpcyBwYXRjaCBmaXhlcyBpbiBtb3JlIGRl
dGFpbCANCj4gcGxlYXNlwqAgPw0KPg0KR1BVIHJlc2V0IGlzc3VlIHN0YXJ0ZWQgYWZ0ZXIgYWRk
aW5nIFtQQVRDSCA2LzZdLg0KDQpSb290IGNhdXNlIC0+IEluIGRybV9zY2hlZF9nZXRfY2xlYW51
cF9qb2IoKSwgV2UgdXNlIHRoZSBmaW5pc2hlZCBmZW5jZSANCnN0YXR1cyBiaXQgdG8gY2hlY2sg
dGhlIGpvYiBzdGF0dXMgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKCkuIElmIGEgam9iIGlzIA0Kc2ln
bmFsZWQgKERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCBpcyBzZXQpLCB0aGVuIHdlIGNhbmNl
bCB0aGUgcmVzZXQgDQp3b3JrZXIgdGhyZWFkLg0KDQpBZnRlciBhcHBseWluZyBbcGF0Y2ggNl0g
bm93IHdlIGFyZSBjaGVja2luZyBlbmFibGUgc2lnbmFsaW5nIGluIA0KZG1hX2ZlbmNlX2lzX3Np
Z25hbGVkKCkgYnkgY2hlY2tpbmcgRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQgDQpi
aXQuIGJ1dCBzaWduYWxpbmcgaXMgbm90IGVuYWJsZWQgZm9yIHRoZSBmaW5pc2hlZCBmZW5jZS4g
QXMgYSByZXN1bHQsIA0KZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKCkgYWx3YXlzIHJldHVybnMgZmFs
c2UsIGFuZCANCmRybV9zY2hlZF9nZXRfY2xlYW51cF9qb2IoKSB3aWxsIG5vdCBjYW5jZWwgdGhl
IHJlc2V0IHdvcmtlciB0aHJlYWQsIA0KcmVzdWx0aW5nIGluIHRoZSBHUFUgcmVzZXQuDQoNClRv
IEZpeCB0aGUgYWJvdmUgaXNzdWXCoCBDaHJpc3RpYW4gc3VnZ2VzdGVkIHRoYXQgd2UgY2FuIHVz
ZSANCnBhcmVudChoYXJkd2FyZSkgZmVuY2UgaW5zdGVhZCBvZiBmaW5pc2hlZCBmZW5jZSBiZWNh
dXNlIHNpZ25hbGluZyANCmVuYWJsZWQgYnkgdGhlIGNhbGxpbmcgb2YgZG1hX2ZlbmNlX2FkZF9j
YWxsYmFjaygpIGZvciBwYXJlbnQgZmVuY2UuIEFzIA0KYSByZXN1bHQsIGRtYV9mZW5jZV9pc19z
aWduYWxlZCgpIHdpbGwgcmV0dXJuIHRoZSBjb3JyZWN0IGZlbmNlIHN0YXR1cyANCmFuZCByZXNl
dCB3b3JrZXIgdGhyZWFkIGNhbiBiZSBjYW5jZWxsZWQgaW4gZHJtX3NjaGVkX2dldF9jbGVhbnVw
X2pvYigpLg0KDQp+YXJ2aW5kDQoNCj4gQW5kcmV5DQo+DQo+IE9uIDIwMjItMDktMDkgMTM6MDgs
IEFydmluZCBZYWRhdiB3cm90ZToNCj4+IFVzaW5nIHRoZSBwYXJlbnQgZmVuY2UgaW5zdGVhZCBv
ZiB0aGUgZmluaXNoZWQgZmVuY2UNCj4+IHRvIGdldCB0aGUgam9iIHN0YXR1cy4gVGhpcyBjaGFu
Z2UgaXMgdG8gYXZvaWQgR1BVDQo+PiBzY2hlZHVsZXIgdGltZW91dCBlcnJvciB3aGljaCBjYW4g
Y2F1c2UgR1BVIHJlc2V0Lg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEFydmluZCBZYWRhdiA8QXJ2
aW5kLllhZGF2QGFtZC5jb20+DQo+PiAtLS0NCj4+DQo+PiBjaGFuZ2VzIGluIHYxLHYyIC0gRW5h
YmxlIHNpZ25hbGluZyBmb3IgZmluaXNoZWQgZmVuY2UgaW4gc2NoZV9tYWluKCkNCj4+IGlzIHJl
bW92ZWQNCj4+DQo+PiAtLS0NCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRf
bWFpbi5jIHwgNCArKy0tDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1
bGVyL3NjaGVkX21haW4uYyANCj4+IGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9t
YWluLmMNCj4+IGluZGV4IGUwYWIxNGUwZmI2Yi4uMmFjMjhhZDExNDMyIDEwMDY0NA0KPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMNCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+PiBAQCAtODI5LDcgKzgyOSw3IEBA
IGRybV9zY2hlZF9nZXRfY2xlYW51cF9qb2Ioc3RydWN0IA0KPj4gZHJtX2dwdV9zY2hlZHVsZXIg
KnNjaGVkKQ0KPj4gwqDCoMKgwqDCoCBqb2IgPSBsaXN0X2ZpcnN0X2VudHJ5X29yX251bGwoJnNj
aGVkLT5wZW5kaW5nX2xpc3QsDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9zY2hlZF9qb2IsIGxpc3QpOw0KPj4gwqAgLcKgwqDC
oCBpZiAoam9iICYmIGRtYV9mZW5jZV9pc19zaWduYWxlZCgmam9iLT5zX2ZlbmNlLT5maW5pc2hl
ZCkpIHsNCj4+ICvCoMKgwqAgaWYgKGpvYiAmJiBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoam9iLT5z
X2ZlbmNlLT5wYXJlbnQpKSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLyogcmVtb3ZlIGpvYiBm
cm9tIHBlbmRpbmdfbGlzdCAqLw0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGxpc3RfZGVsX2luaXQo
JmpvYi0+bGlzdCk7DQo+PiDCoCBAQCAtODQxLDcgKzg0MSw3IEBAIGRybV9zY2hlZF9nZXRfY2xl
YW51cF9qb2Ioc3RydWN0IA0KPj4gZHJtX2dwdV9zY2hlZHVsZXIgKnNjaGVkKQ0KPj4gwqAgwqDC
oMKgwqDCoMKgwqDCoMKgIGlmIChuZXh0KSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBuZXh0LT5zX2ZlbmNlLT5zY2hlZHVsZWQudGltZXN0YW1wID0NCj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgam9iLT5zX2ZlbmNlLT5maW5pc2hlZC50aW1lc3RhbXA7DQo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGpvYi0+c19mZW5jZS0+cGFyZW50LT50aW1l
c3RhbXA7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBzdGFydCBUTyB0aW1lciBm
b3IgbmV4dCBqb2IgKi8NCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRybV9zY2hlZF9z
dGFydF90aW1lb3V0KHNjaGVkKTsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9DQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
