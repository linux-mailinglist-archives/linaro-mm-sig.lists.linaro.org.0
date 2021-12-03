Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8A64677D6
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Dec 2021 14:08:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A938962169
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Dec 2021 13:08:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6B9FF62079; Fri,  3 Dec 2021 13:08:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CFFD61A40;
	Fri,  3 Dec 2021 13:08:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F141061A24
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Dec 2021 13:08:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EEDE961A40; Fri,  3 Dec 2021 13:08:33 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2081.outbound.protection.outlook.com [40.107.244.81])
 by lists.linaro.org (Postfix) with ESMTPS id C644361A24
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Dec 2021 13:08:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dKJpkkYyMh6kz8viEfyaIGkhdq0YK8D9xsBuGRKTiUrU0LRDiqTvbvO0XJg7hs8o/SIoSRsr9+raIVSsnvG6eswwnifNTm5xFpKT2DDmyzeSH7qZZiB8rj0gtI54nStxxKFkNJRb8f0NXsHzJ8JjRUHxidhVFKnpevpOLu93apiq+ZrWpw8I7riRRK+m9BQa09DX9nNM4q4TI/Qc26MMlMjBlE1UgRkRlQlkc3ebSIaK1FaDDoaOwOvCxchLr6zaCw8qKwcX46b2qPwkn8JO0zmjZH1QxgqJFw3wgrhGPyIQgKSe+kLrXbh1RcYd1anoVlQSHFLas0Vy9skU9XTjVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xL4di5yyCwDT9CJ7LfbKTD1bPqU1cXfXIWjw/t4CCOI=;
 b=TFw45wy5bI2ZixxstHPwQvfw2ekhsB+HW3/gf2E7pQmq8d/eQTm4EvmhCIS8HiWI0hyNLup4gxhnACQG13WVJz5gMr9GkURM32HOPh6gkVzYkTeyAEks51EE0YBRI68CoDDngfYYUWBJjNToMEIIVyfmf8+Du/Fe8tAT/T9EUCKIVQ/Rnqpkz5bwRdKPhoRMUEMNIx5RZQcJZKqicj8a2HeJGXHcDbWWkHeNL6ZzoxjtQ/XDeBgp/Rp0Da1ja0Hcmbd4vn70oEDKsfIzPHvVUyErtw/+Z53C8QnKpoyi8p3c9lC9zBLCWohubJiTK/Urb79XNuA3G2OyZR1JaapXgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xL4di5yyCwDT9CJ7LfbKTD1bPqU1cXfXIWjw/t4CCOI=;
 b=uT5JTVbCo6964vrZC0nuVrszsTSQO7GfCmDy2m1z5BaxujKLlbJwF2ezBGsqHBUdPhBdZsgXfskiEAEN8zMWk/6Lq+lc9NKx/Q5f6ewN7gkJvG/kUyhPZCcDTegYT0/T+EEEQ7B4JOPTDTGsCckoD4/AZNkIogg3ZmXiL20CEYQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MWHPR1201MB2510.namprd12.prod.outlook.com
 (2603:10b6:300:e8::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Fri, 3 Dec
 2021 13:08:27 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::d16c:a6d5:5d2e:f9d4]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::d16c:a6d5:5d2e:f9d4%12]) with mapi id 15.20.4734.028; Fri, 3 Dec 2021
 13:08:27 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20211130121936.586031-1-thomas.hellstrom@linux.intel.com>
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
 <4805074d-7039-3eaf-eb5d-5797278b7f31@amd.com>
 <94435e0e-01db-5ae4-e424-64f73a09199f@shipmail.org>
 <a4df4d5f-ea74-8725-aca9-d0edae986e5c@amd.com>
 <fb9f50e2-aeba-6138-0cc0-aed252dc876d@shipmail.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <8a7dbf22-727d-c1ec-1d3f-75e23394fee8@amd.com>
Date: Fri, 3 Dec 2021 14:08:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <fb9f50e2-aeba-6138-0cc0-aed252dc876d@shipmail.org>
Content-Language: en-US
X-ClientProxiedBy: AM6P193CA0037.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:8e::14) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [IPv6:2a02:908:1252:fb60:4e4f:2719:8872:ca0c]
 (2a02:908:1252:fb60:4e4f:2719:8872:ca0c) by
 AM6P193CA0037.EURP193.PROD.OUTLOOK.COM (2603:10a6:209:8e::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.14 via Frontend Transport; Fri, 3 Dec 2021 13:08:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dcd21605-f3b9-4b7d-3b52-08d9b65dfe72
X-MS-TrafficTypeDiagnostic: MWHPR1201MB2510:
X-Microsoft-Antispam-PRVS: <MWHPR1201MB2510E78D697D49C44D57FEBA836A9@MWHPR1201MB2510.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W2b+uckDgjejB2nzJxJxPT9Dk6FE/AL41zmgVaXWvi5i3L47hn90xBdbTxBfDCHyaKpBqRcfWM27nVFTzvMbuqg+RFZvA7DO5Nub5k+vl11nEqDm3D+z4CpKm6drJtVXLeV0JaHkHiEnJTE36o3xwc76O4AKPAKiaeo3OCFqVbOT6W2N0vv8mN4YOnO9NqrZ+g77kysYA1XphDxMjIEA8QYo3SVfrai8mE7BSvcb2Hosrbz0Op8f8CNobZvRkeCHpUeNFZLOVrR5l/QzrZb388QE0pcZ47GrzbOlxFWwwHfmlt8SrNrtTd1DHCKaQXLT/Ugrsj8AtZ+ldzgT3e+lz7fQFbCaaw5c1PR0B3MIKgHDEG1J/TrZAJIG6JVHUjAgDxSrojMexJl9FDzPUksruhIA8Fl30XupmhXY9YfeFm5bN53OJUasXUPeDgvJQ/iEG2urRTTu6amipVqcZVUbRmzy39Q1N7w+GvMwzjsrVxib9jhkeqW3ZNLSWRUEkFuUnE6N8E+pPoVpo/BzFLuMY8g0eUpju19t8AUjV4w3RV9z2h5X/qplT5t3ZZM/CtyBA4jEm45zI01toa2r9eJZ3/LMVll2CcMZm3ojQpLCrbX+26Xcwt1aKAS+QtHAwEoSNi/1g7RCe4V1AQocs+KetskIpxgH9cuwujYQvqfMqXjPpnlsHLRnEW9R3GqvQ9Tcyv+P0bQoLRcqpu+hduV3MmyZStHDfIF/zXs1L0E6NZ8w5K+nlAMXtYpZIvHtt/2d
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(66946007)(31686004)(5660300002)(86362001)(2906002)(508600001)(110136005)(316002)(66574015)(66476007)(38100700002)(31696002)(66556008)(36756003)(8676002)(8936002)(6486002)(2616005)(4326008)(53546011)(186003)(6666004)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rm9iSVdpelR5U29NRnhhNXNFd0o1ZmxGVDJXSlVGZ0JlcVp3TUNCNEs3SE1Y?=
 =?utf-8?B?OVFjekY0NCswMzJTS1k5WXlFQ1N0Z2VlRzI1YWdCLzlyekdRTGkwV1BueU11?=
 =?utf-8?B?M0JSdDhLWmxjRHZ6QmhvbHR2QmxaSkUxRkRENVdBaXQwQzYwVUlsOW1CRW44?=
 =?utf-8?B?YmVWMk5UYlphaFM2TVY0WU81K3l5elk5ajVwdis2NnBINS84NFdvbk9sRkxP?=
 =?utf-8?B?TU1vdjVsdDJ4a1RBSjk1bXk3d1FBSEx0NzRqWGVncXl6SkJxczlpbTdoeTlq?=
 =?utf-8?B?QWhuWnhzdkdyNUdIRGxjTFRoUm1yMkkzZC8zVXpKK3M5UUwwelZaZG53cFdB?=
 =?utf-8?B?Mm81ekNFeWtwc2J3QktYaUU4cXFVczFYdVBYWVJpaTlqSXlVM0pmakdkWGJq?=
 =?utf-8?B?ekVIVDRhY1Y2aHBVYlRrNVlDMEVkSUNuWFM4QVNuclU3aW9DdHY5WG8vcUhr?=
 =?utf-8?B?Wm5hWlc2SVFCMjZteE5peEFzSkxBQTAwVkJoc1JBMHY0TzhZcEtwMnVoTHgr?=
 =?utf-8?B?MmE4aVVrOVVjeGR3ZUZ0WW8vdkQ2ZUNENytZZVNBa1luQUlPdXd3Kzgzc3Rw?=
 =?utf-8?B?eVZIdDlZckVyN2FnYkdqUHJPSDhkV3NPV2E3aG1pQXFQZ3AxNWo1WWJCTFc4?=
 =?utf-8?B?N0pGVXRiVUV3SUlsaFFvMWlYcEtkUDg1M2dHQ0hkdVNYOW1zRnJaNmd4cEV5?=
 =?utf-8?B?Z3Zua1d2emNaTHVDTWNEcDBMQk0wcG5ham9hN09zWTc0RzB4cUF1TXhaeGdF?=
 =?utf-8?B?TnJ3REptVmJZY01BaC8wUWdzczNrUm0yUVg4cDcvYlBQOVF6ajNPbGZiNmdj?=
 =?utf-8?B?Y2M4eTVSQlRWUGhYWkVVNU43MHkwemZIelBZS0RjNDB4eGxuSmpjay9UN2kz?=
 =?utf-8?B?WXBSS2todmlxY1EwTUVhTG5haHd4YVQ3OTJqeFkrcEpqVnZybEw1dmtkRnAv?=
 =?utf-8?B?NW9HajhaR2JKT0FUT3pKZ2kwbjNjNDUrS0dQNS9mK2JWWEFOd0RSM1lnZzQ4?=
 =?utf-8?B?UU1MdzRXWWtDQlJiNFRaL0I2Tm1FUnpyRWorYUlwZ3N4WHl4Tkt1Vkk0NW43?=
 =?utf-8?B?Y3J2VXQ4TVk0bUNVWjdsaTRwdXpPYmk3M1hiVkx6ME1iQ2x1QUp3ckIzUXV0?=
 =?utf-8?B?K3RxbTNpeTE1SDYzQVpBbnVWcjBvZUM4NmhreWtYVEx4ZlBXZ2lsdmxGMnU4?=
 =?utf-8?B?NFZIYk52OVU3M0ZtdEtFNmdkMHJDQ05oTFhjRmZKR2tybXpKc3JWeUdFeElM?=
 =?utf-8?B?OUl3Z215NTVFQlJSb3J6MVpFaDl5V3dWaGZkZDE4RHRnZUlTWjFIREpHMlMy?=
 =?utf-8?B?d2dTM3duVC9LMjEyZmxXK1gzS1hEQmRzRnVPRUFidG9PV2liRExQNG1pOEMw?=
 =?utf-8?B?Z1RjVzlYRnp1dSttN1FYVEZ1TFc0S01QbXUxcWhMNk9tODdnMFNoanZlenQz?=
 =?utf-8?B?YmZrdkdmdU8rSzVzVExUVTZkVUUzRVhZVkNDQnUwYzVMaGdkUXVtYk5pZGda?=
 =?utf-8?B?RGVnaWZDSDk1aW5zaW5ZbXhZNnVXZE53N3JMajF3RThtTVhJakZXeWlKT3lS?=
 =?utf-8?B?cGNzazNMQkIyUlpXVjZjY0lmRjBKZGhpUmhHclVVY253RlZ2aXVaU1VEakVL?=
 =?utf-8?B?ZkZVZ05WRDM5ZUo3N1hOQjhLNE9kdUpYeitPRkJ0QndYSWZuNkhFZlA4eWZp?=
 =?utf-8?B?a29xbEQxMTFSRTBhc0U0aTZiaTQ0TXlxSStZelZ4NDNtcy80S3BvV2lLcXNF?=
 =?utf-8?B?SWpSeU9HdDZJS2laQklKS3g1MlNsV21xVGo2cVlEaDBCMkQ4VHJYbG9STGJ1?=
 =?utf-8?B?cXQzT3lYVG5zR3ZWaDd3TzdxV0RZVEFZUnZybU9qVzdRclNEbVlSNHRMK0FC?=
 =?utf-8?B?S0EwRUZEMEt5enFyNUZBRU9ZZ3ZCaGdBN2x6NUJxZG5UTXh5TFVIZkJCSHY0?=
 =?utf-8?B?dEI0RzNVRS8rZkIrREM1NGZSZXRMaUw2c25XTmJLazVic1Yxby9mVktaam5O?=
 =?utf-8?B?d1VwUy8wWGN6ZmNFLzJGTWFYOGpmbE1YVHlIRTBRem9KeklUc1VyWGQxMG8y?=
 =?utf-8?B?TXhEanBRYkhyTU95TXI2RnNlWUJuN0hFbVNHWXRIeW42QzI2RUR0SGJyUlpD?=
 =?utf-8?B?Zkt6ZVRxU3VFaldOcHMzMjlWV0ZIY1l0SlhubmxRRmNBOUI5a2llOTFXdFVv?=
 =?utf-8?Q?5zmk2eSvbDXY5uvpMYF6gkY=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcd21605-f3b9-4b7d-3b52-08d9b65dfe72
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2021 13:08:26.9047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a8nCTu/Q2Ya9OPAu2bsnlAfyhhD9JyMUwJM+x5f60o/lurf963jU1Ucn1o9ffoGl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1201MB2510
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

QW0gMDEuMTIuMjEgdW0gMTM6MTYgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpOgo+
Cj4gT24gMTIvMS8yMSAxMjoyNSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4gQW0gMDEuMTIu
MjEgdW0gMTI6MDQgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpOgo+Pj4KPj4+IE9u
IDEyLzEvMjEgMTE6MzIsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4gQW0gMDEuMTIuMjEg
dW0gMTE6MTUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpOgo+Pj4+PiBbU05JUF0K
Pj4+Pj4+Cj4+Pj4+PiBXaGF0IHdlIGNvdWxkIGRvIGlzIHRvIGF2b2lkIGFsbCB0aGlzIGJ5IG5v
dCBjYWxsaW5nIHRoZSBjYWxsYmFjayAKPj4+Pj4+IHdpdGggdGhlIGxvY2sgaGVsZCBpbiB0aGUg
Zmlyc3QgcGxhY2UuCj4+Pj4+Cj4+Pj4+IElmIHRoYXQncyBwb3NzaWJsZSB0aGF0IG1pZ2h0IGJl
IGEgZ29vZCBpZGVhLCBwbHMgYWxzbyBzZWUgYmVsb3cuCj4+Pj4KPj4+PiBUaGUgcHJvYmxlbSB3
aXRoIHRoYXQgaXMgCj4+Pj4gZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoKS9kbWFfZmVuY2Vfc2ln
bmFsX3RpbWVzdGFtcF9sb2NrZWQoKS4gSWYgCj4+Pj4gd2UgY291bGQgYXZvaWQgdXNpbmcgdGhh
dCBvciBhdCBsZWFzdCBhbGxvdyBpdCB0byBkcm9wIHRoZSBsb2NrIAo+Pj4+IHRoZW4gd2UgY291
bGQgY2FsbCB0aGUgY2FsbGJhY2sgd2l0aG91dCBob2xkaW5nIGl0Lgo+Pj4+Cj4+Pj4gU29tZWJv
ZHkgd291bGQgbmVlZCB0byBhdWRpdCB0aGUgZHJpdmVycyBhbmQgc2VlIGlmIGhvbGRpbmcgdGhl
IAo+Pj4+IGxvY2sgaXMgcmVhbGx5IG5lY2Vzc2FyeSBhbnl3aGVyZS4KPj4+Pgo+Pj4+Pj4KPj4+
Pj4+Pj4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IC9UaG9tYXMKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBP
aCwgYW5kIGEgZm9sbG93IHVwIHF1ZXN0aW9uOgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IElmIHRoZXJl
IHdhcyBhIHdheSB0byBicmVhayB0aGUgcmVjdXJzaW9uIG9uIGZpbmFsIHB1dCgpIAo+Pj4+Pj4+
Pj4gKHVzaW5nIHRoZSBzYW1lIGJhc2ljIGFwcHJvYWNoIGFzIHBhdGNoIDIgaW4gdGhpcyBzZXJp
ZXMgdXNlcyAKPj4+Pj4+Pj4+IHRvIGJyZWFrIHJlY3Vyc2lvbiBpbiBlbmFibGVfc2lnbmFsaW5n
KCkpLCBzbyB0aGF0IG5vbmUgb2YgCj4+Pj4+Pj4+PiB0aGVzZSBjb250YWluZXJzIGRpZCByZXF1
aXJlIGFueSBzcGVjaWFsIHRyZWF0bWVudCwgd291bGQgaXQgCj4+Pj4+Pj4+PiBiZSB3b3J0aCBw
dXJzdWluZz8gSSBndWVzcyBpdCBtaWdodCBiZSBwb3NzaWJsZSBieSBoYXZpbmcgdGhlIAo+Pj4+
Pj4+Pj4gY2FsbGJhY2tzIGRyb3AgdGhlIHJlZmVyZW5jZXMgcmF0aGVyIHRoYW4gdGhlIGxvb3Ag
aW4gdGhlIAo+Pj4+Pj4+Pj4gZmluYWwgcHV0LiArIGEgY291cGxlIG9mIGNoYW5nZXMgaW4gY29k
ZSBpdGVyYXRpbmcgb3ZlciB0aGUgCj4+Pj4+Pj4+PiBmZW5jZSBwb2ludGVycy4KPj4+Pj4+Pj4K
Pj4+Pj4+Pj4gVGhhdCB3b24ndCByZWFsbHkgaGVscCwgeW91IGp1c3QgbW92ZSB0aGUgcmVjdXJz
aW9uIGZyb20gdGhlIAo+Pj4+Pj4+PiBmaW5hbCBwdXQgaW50byB0aGUgY2FsbGJhY2suCj4+Pj4+
Pj4KPj4+Pj4+PiBIb3cgZG8gd2UgcmVjdXJzZSBmcm9tIHRoZSBjYWxsYmFjaz8gVGhlIGludHJv
ZHVjZWQgZmVuY2VfcHV0KCkgCj4+Pj4+Pj4gb2YgaW5kaXZpZHVhbCBmZW5jZSBwb2ludGVycwo+
Pj4+Pj4+IGRvZXNuJ3QgcmVjdXJzZSBhbnltb3JlIChhdCBtb3N0IDEgbGV2ZWwpLCBhbmQgYW55
IGNhbGxiYWNrIAo+Pj4+Pj4+IHJlY3Vyc2lvbiBpcyBicm9rZW4gYnkgdGhlIGlycV93b3JrPwo+
Pj4+Pj4KPj4+Pj4+IFllYWgsIGJ1dCB0aGVuIHlvdSB3b3VsZCBuZWVkIHRvIHRha2UgYW5vdGhl
ciBsb2NrIHRvIGF2b2lkIAo+Pj4+Pj4gcmFjaW5nIHdpdGggZG1hX2ZlbmNlX2FycmF5X3NpZ25h
bGVkKCkuCj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gSSBmaWd1cmUgdGhlIGJpZyBhbW91bnQgb2Yg
d29yayB3b3VsZCBiZSB0byBhZGp1c3QgY29kZSB0aGF0IAo+Pj4+Pj4+IGl0ZXJhdGVzIG92ZXIg
dGhlIGluZGl2aWR1YWwgZmVuY2UgcG9pbnRlcnMgdG8gcmVjb2duaXplIHRoYXQgCj4+Pj4+Pj4g
dGhleSBhcmUgcmN1IHByb3RlY3RlZC4KPj4+Pj4+Cj4+Pj4+PiBDb3VsZCBiZSB0aGF0IHdlIGNv
dWxkIHNvbHZlIHRoaXMgd2l0aCBSQ1UsIGJ1dCB0aGF0IHNvdW5kcyBsaWtlIAo+Pj4+Pj4gYSBs
b3Qgb2YgY2h1cm4gZm9yIG5vIGdhaW4gYXQgYWxsLgo+Pj4+Pj4KPj4+Pj4+IEluIG90aGVyIHdv
cmRzIGV2ZW4gd2l0aCB0aGUgcHJvYmxlbXMgc29sdmVkIEkgdGhpbmsgaXQgd291bGQgYmUgCj4+
Pj4+PiBhIHJlYWxseSBiYWQgaWRlYSB0byBhbGxvdyBjaGFpbmluZyBvZiBkbWFfZmVuY2VfYXJy
YXkgb2JqZWN0cy4KPj4+Pj4KPj4+Pj4gWWVzLCB0aGF0IHdhcyByZWFsbHkgdGhlIHF1ZXN0aW9u
LCBJcyBpdCB3b3J0aCBwdXJzdWluZyB0aGlzPyBJJ20gCj4+Pj4+IG5vdCByZWFsbHkgc3VnZ2Vz
dGluZyB3ZSBzaG91bGQgYWxsb3cgdGhpcyBhcyBhbiBpbnRlbnRpb25hbCAKPj4+Pj4gZmVhdHVy
ZS4gSSdtIHdvcnJpZWQsIGhvd2V2ZXIsIHRoYXQgaWYgd2UgYWxsb3cgdGhlc2UgY29udGFpbmVy
cyAKPj4+Pj4gdG8gc3RhcnQgZmxvYXRpbmcgYXJvdW5kIGNyb3NzLWRyaXZlciAob3IgZXZlbiBp
bnRlcm5hbGx5KSAKPj4+Pj4gZGlzZ3Vpc2VkIGFzIG9yZGluYXJ5IGRtYV9mZW5jZXMsIHRoZXkg
d291bGQgcmVxdWlyZSBhIGxvdCBvZiAKPj4+Pj4gZHJpdmVyIHNwZWNpYWwgY2FzaW5nLCBvciBl
bHNlIGNvbXBsZXRlbHkgdW5leHBlY2VkIFdBUk5fT04oKXMgYW5kIAo+Pj4+PiBsb2NrZGVwIHNw
bGF0cyB3b3VsZCBzdGFydCB0byB0dXJuIHVwLCBzY2FyaW5nIHBlb3BsZSBvZmYgZnJvbSAKPj4+
Pj4gdXNpbmcgdGhlbS4gQW5kIHRoYXQgd291bGQgYmUgYSBicmVlZGluZyBncm91bmQgZm9yIGhh
aXJ5IAo+Pj4+PiBkcml2ZXItcHJpdmF0ZSBjb25zdHJ1Y3RzLgo+Pj4+Cj4+Pj4gV2VsbCB0aGUg
cXVlc3Rpb24gaXMgd2h5IHdlIHdvdWxkIHdhbnQgdG8gZG8gaXQ/Cj4+Pj4KPj4+PiBJZiBpdCdz
IHRvIGF2b2lkIGludGVyIGRyaXZlciBsb2NrIGRlcGVuZGVuY2llcyBieSBhdm9pZGluZyB0byBj
YWxsIAo+Pj4+IHRoZSBjYWxsYmFjayB3aXRoIHRoZSBzcGlubG9jayBoZWxkLCB0aGVuIHllcyBw
bGVhc2UuIFdlIGhhZCB0b25zIAo+Pj4+IG9mIHByb2JsZW1zIHdpdGggdGhhdCwgcmVzdWx0aW5n
IGluIGlycV93b3JrIGFuZCB3b3JrX2l0ZW0gCj4+Pj4gZGVsZWdhdGlvbiBhbGwgb3ZlciB0aGUg
cGxhY2UuCj4+Pgo+Pj4gWWVzLCB0aGF0IHNvdW5kcyBsaWtlIHNvbWV0aGluZyBkZXNpcmFibGUs
IGJ1dCBpbiB0aGVzZSBjb250YWluZXJzLCAKPj4+IHdoYXQncyBjYXVzaW5nIHRoZSBsb2NrIGRl
cGVuZGVuY2llcyBpcyB0aGUgZW5hYmxlX3NpZ25hbGluZygpIAo+Pj4gY2FsbGJhY2sgdGhhdCBp
cyB0eXBpY2FsbHkgY2FsbGVkIGxvY2tlZC4KPj4+Cj4+Pgo+Pj4+Cj4+Pj4gSWYgaXQncyB0byBh
bGxvdyBuZXN0aW5nIG9mIGRtYV9mZW5jZV9hcnJheSBpbnN0YW5jZXMsIHRoZW4gaXQncyAKPj4+
PiBtb3N0IGxpa2VseSBhIHJlYWxseSBiYWQgaWRlYSBldmVuIGlmIHdlIGZpeCBhbGwgdGhlIGxv
Y2tpbmcgb3JkZXIgCj4+Pj4gcHJvYmxlbXMuCj4+Pgo+Pj4gV2VsbCBJIHRoaW5rIG15IHVzZS1j
YXNlIHdoZXJlIEkgaGl0IGEgZGVhZCBlbmQgbWF5IGlsbHVzdHJhdGUgd2hhdCAKPj4+IHdvcnJp
ZXMgbWUgaGVyZToKPj4+Cj4+PiAxKSBXZSB1c2UgYSBkbWEtZmVuY2UtYXJyYXkgdG8gY29hbGVz
Y2UgYWxsIGRlcGVuZGVuY2llcyBmb3IgdHRtIAo+Pj4gb2JqZWN0IG1pZ3JhdGlvbi4KPj4+IDIp
IFdlIHVzZSBhIGRtYS1mZW5jZS1jaGFpbiB0byBvcmRlciB0aGUgcmVzdWx0aW5nIGRtX2ZlbmNl
IGludG8gYSAKPj4+IHRpbWVsaW5lIGJlY2F1c2UgdGhlIFRUTSByZXNvdXJjZSBtYW5hZ2VyIGNv
ZGUgcmVxdWlyZXMgdGhhdC4KPj4+Cj4+PiBJbml0aWFsbHkgc2VlbWluZ2x5IGhhcm1sZXNzIHRv
IG1lLgo+Pj4KPj4+IEJ1dCBhZnRlciBhIHNlcXVlbmNlIGV2aWN0LT5hbGxvYy0+Y2xlYXIsIHRo
ZSBkbWEtZmVuY2UtY2hhaW4gZmVlZHMgCj4+PiBpbnRvIHRoZSBkbWEtZmVuY2UtYXJyYXkgZm9y
IHRoZSBjbGVhcmluZyBvcGVyYXRpb24uIENvZGUgc3RpbGwgCj4+PiB3b3JrcyBmaW5lLCBhbmQg
bm8gZGVlcCByZWN1cnNpb24sIG5vIHdhcm5pbmdzLiBCdXQgaWYgSSB3ZXJlIHRvIGFkZCAKPj4+
IGFub3RoZXIgZHJpdmVyIHRvIHRoZSBzeXN0ZW0gdGhhdCBpbnN0ZWFkIGZlZWRzIGEgZG1hLWZl
bmNlLWFycmF5IAo+Pj4gaW50byBhIGRtYS1mZW5jZS1jaGFpbiwgdGhpcyB3b3VsZCBnaXZlIG1l
IGEgbG9ja2RlcCBzcGxhdC4KPj4+Cj4+PiBTbyB0aGVuIGlmIHNvbWVib2R5IHdlcmUgdG8gY29t
ZSB1cCB3aXRoIHRoZSBzcGxlbmRpZCBpZGVhIG9mIHVzaW5nIAo+Pj4gYSBkbWEtZmVuY2UtY2hh
aW4gdG8gaW5pdGlhbGx5IGNvYWxlc2NlIGZlbmNlcywgSSdkIGhpdCB0aGUgc2FtZSAKPj4+IHBy
b2JsZW0gb3IgcmlzayBpbGxlZ2FseSBqb2luaW5nIHR3byBkbWEtZmVuY2UtY2hhaW5zIHRvZ2V0
aGVyLgo+Pj4KPj4+IFRvIGZpeCB0aGlzLCBJIHdvdWxkIG5lZWQgdG8gbG9vayBhdCB0aGUgaW5j
b21pbmcgZmVuY2VzIGFuZCBpdGVyYXRlIAo+Pj4gb3ZlciBhbnkgZG1hLWZlbmNlLWFycmF5IG9y
IGRtYS1mZW5jZS1jaGFpbiB0aGF0IGlzIGZlZCBpbnRvIHRoZSAKPj4+IGRtYS1mZW5jZS1hcnJh
eSB0byBmbGF0dGVuIG91dCB0aGUgaW5wdXQuIEluIGZhY3QgYWxsIAo+Pj4gZG1hLWZlbmNlLWFy
cmF5IHVzZXJzIHdvdWxkIG5lZWQgdG8gZG8gdGhhdCwgYW5kIGV2ZW4gCj4+PiBkbWEtZmVuY2Ut
Y2hhaW4gdXNlcnMgd2F0Y2hpbmcgb3V0IGZvciBub3Qgam9pbmluZyBjaGFpbnMgdG9nZXRoZXIg
Cj4+PiBvciBhY2NpZGVudGx5IGFkZCBhbiBhcnJheSB0aGF0IHBlcmhhcHMgY2FtZSBhcyBhIGRp
c2d1aXNlZCAKPj4+IGRtYS1mZW5jZSBmcm9tIGFudG90aGVyIGRyaXZlci4KPj4+Cj4+PiBTbyB0
aGUgcHVycG9zZSB0byBtZSB3b3VsZCBiZSB0byBhbGxvdyB0aGVzZSBjb250YWluZXJzIGFzIGlu
cHV0IHRvIAo+Pj4gZWFjaG90aGVyIHdpdGhvdXQgYSBsb3Qgb2YgaW4tZHJpdmVyIHNwZWNpYWwt
Y2FzaW5nLCBiZSBpdCBieSAKPj4+IGJyZWFraW5nIHJlY3Vyc2lvbiBvbiBidWlsdC1pbiBmbGF0
dGVuaW5nIHRvIGF2b2lkCj4+Pgo+Pj4gYSkgSGl0dGluZyBpc3N1ZXMgaW4gdGhlIGZ1dHVyZSBv
ciB3aXRoIGV4aXN0aW5nIGludGVyb3BlcmF0aW5nIAo+Pj4gZHJpdmVycy4KPj4+IGIpIEF2b2lk
IGRyaXZlci1wcml2YXRlIGNvbnRhaW5lcnMgdGhhdCBhbHNvIG1pZ2h0IGJyZWFrIHRoZSAKPj4+
IGludGVyb3BlcmFiaWxpdHkuIChGb3IgZXhhbXBsZSB0aGUgaTkxNSBjdXJyZW50bHkgZHJpdmVy
LXByaXZhdGUgCj4+PiBkbWFfZmVuY2Vfd29yayBhdm9pZCBhbGwgdGhlc2UgcHJvYmxlbXMsIGJ1
dCB3ZSdyZSBhdHRlbXB0aW5nIHRvIAo+Pj4gYWRkcmVzcyBpc3N1ZXMgaW4gY29tbW9uIGNvZGUg
cmF0aGVyIHRoYW4gcmUtaW52ZW50aW5nIHN0dWZmIAo+Pj4gaW50ZXJuYWxseSkuCj4+Cj4+IEkg
ZG9uJ3QgdGhpbmsgdGhhdCBhIGRtYV9mZW5jZV9hcnJheSBvciBkbWFfZmVuY2VfY2hhaW4gaXMg
dGhlIHJpZ2h0IAo+PiB0aGluZyB0byBiZWdpbiB3aXRoIGluIHRob3NlIHVzZSBjYXNlcy4KPj4K
Pj4gV2hlbiB5b3Ugd2FudCB0byBjb2FsZXNjZSB0aGUgZGVwZW5kZW5jaWVzIGZvciBhIGpvYiB5
b3UgY291bGQgZWl0aGVyIAo+PiB1c2UgYW4geGFycmF5IGxpa2UgRGFuaWVsIGRpZCBmb3IgdGhl
IHNjaGVkdWxlciBvciBzb21lIGhhc2h0YWJsZSAKPj4gbGlrZSB3ZSB1c2UgaW4gYW1kZ3B1LiBC
dXQgSSBkb24ndCBzZWUgdGhlIG5lZWQgZm9yIGV4cG9zaW5nIHRoZSAKPj4gZG1hX2ZlbmNlIGlu
dGVyZmFjZSBmb3IgdGhvc2UuCj4KPiBUaGlzIGlzIGJlY2F1c2UgdGhlIGludGVyZmFjZSB0byBv
dXIgbWlncmF0aW9uIGNvZGUgdGFrZXMganVzdCBhIAo+IHNpbmdsZSBkbWEtZmVuY2UgYXMgZGVw
ZW5kZW5jeS4gTm93IHRoaXMgaXMgb2YgY291cnNlIHNvbWV0aGluZyB3ZSAKPiBuZWVkIHRvIGxv
b2sgYXQgdG8gbWl0aWdhdGUgdGhpcywgYnV0IHNlZSBiZWxvdy4KClllYWgsIHRoYXQncyBhY3R1
YWxseSBmaW5lLgoKPj4KPj4gQW5kIHdoeSBkbyB5b3UgdXNlIGRtYV9mZW5jZV9jaGFpbiB0byBn
ZW5lcmF0ZSBhIHRpbWVsaW5lIGZvciBUVE0/IAo+PiBUaGF0IHNob3VsZCBjb21lIG5hdHVyYWxs
eSBiZWNhdXNlIGFsbCB0aGUgbW92ZXMgbXVzdCBiZSBvcmRlcmVkLgo+Cj4gT2gsIGluIHRoaXMg
Y2FzZSBiZWNhdXNlIHdlJ3JlIGxvb2tpbmcgYXQgYWRkaW5nIHN0dWZmIGF0IHRoZSBlbmQgb2Yg
Cj4gbWlncmF0aW9uIChsaWtlIGNvYWxlc2Npbmcgb2JqZWN0IHNoYXJlZCBmZW5jZXMgYW5kIC8g
b3IgYXN5bmMgdW5iaW5kIAo+IGZlbmNlcyksIHdoaWNoIG1heSBub3QgY29tcGxldGUgaW4gb3Jk
ZXIuCgpXZWxsIHRoYXQncyBvayBhcyB3ZWxsLiBNeSBxdWVzdGlvbiBpcyB3aHkgZG9lcyB0aGlz
IHNpbmdsZSBkbWFfZmVuY2UgCnRoZW4gc2hvd3MgdXAgaW4gdGhlIGRtYV9mZW5jZV9jaGFpbiBy
ZXByZXNlbnRpbmcgdGhlIHdob2xlIG1pZ3JhdGlvbj8KClRoYXQgc29tZWhvdyBkb2Vzbid0IHNl
ZW0gdG8gbWFrZSBzZW5zZSBiZWNhdXNlIGVhY2ggaW5kaXZpZHVhbCBzdGVwIG9mIAp0aGUgbWln
cmF0aW9uIG5lZWRzIHRvIHdhaXQgZm9yIHRob3NlIGRlcGVuZGVuY2llcyBhcyB3ZWxsIGV2ZW4g
d2hlbiBpdCAKcnVucyBpbiBwYXJhbGxlbC4KCj4gQnV0IHRoYXQncyBub3QgcmVhbGx5IHRoZSBw
b2ludCwgdGhlIHBvaW50IHdhcyB0aGF0IGFuIChhdCBsZWFzdCB0byAKPiBtZSkgc2VlbWluZ2x5
IGhhcm1sZXNzIHVzYWdlIHBhdHRlcm4sIGJlIGl0IHJlYWwgb3IgZmljdGlvdXMsIGVuZHMgdXAg
Cj4gZ2l2aW5nIHlvdSBzZXZlcmUgaW50ZXJuYWwtIG9yIGNyb3NzLWRyaXZlciBoZWFkYWNoZXMu
CgpZZWFoLCB3ZSBwcm9iYWJseSBzaG91bGQgZG9jdW1lbnQgdGhhdCBiZXR0ZXIuIEJ1dCBpbiBn
ZW5lcmFsIEkgZG9uJ3QgCnNlZSBtdWNoIHJlYXNvbiB0byBhbGxvdyBtaXhpbmcgY29udGFpbmVy
cy4gVGhlIGRtYV9mZW5jZV9hcnJheSBhbmQgCmRtYV9mZW5jZV9jaGFpbiBvYmplY3RzIGhhdmUg
c29tZSBkaXN0aW5jdCB1c2UgY2FzZXMgYW5kIGFuZCB1c2luZyB0aGVtIAp0byBidWlsZCB1cCBs
YXJnZXIgZGVwZW5kZW5jeSBzdHJ1Y3R1cmVzIHNvdW5kcyByZWFsbHkgcXVlc3Rpb25hYmxlLgoK
Q2hyaXN0aWFuLgoKPgo+IC9UaG9tYXMKPgo+Cj4+Cj4+IFJlZ2FyZHMsCj4+IENocmlzdGlhbi4K
Pj4KPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
