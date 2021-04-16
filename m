Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2EC362578
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Apr 2021 18:15:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4EFD667E6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Apr 2021 16:15:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 88DC4667E7; Fri, 16 Apr 2021 16:15:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8499667DB;
	Fri, 16 Apr 2021 16:10:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1A95E667D2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Apr 2021 15:58:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F3B23667D3; Fri, 16 Apr 2021 15:58:16 +0000 (UTC)
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-eopbgr760082.outbound.protection.outlook.com [40.107.76.82])
 by lists.linaro.org (Postfix) with ESMTPS id 52E45667D6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Apr 2021 15:54:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CLEB7OSvUgWUoMCucnSpBXeBeitMFf5Y145hnMbZk0h3vYemA697Q2ND+gKtaQ/LQ6rXsu7Rl+PfVJIVJaVoifdk+CC4rtlESHgm9F5seZlVhXYCo6ZIRHk4GbyKlzVJN4ZK9O5SGQdUm6dT8QvXHS0hqE7nv5nMRLekFrSEMw7pY803KrPjNysxJnt8ggxLENeHEc3Z5b9hqllMLkmTb+ENDYMOWx2w9arDpfeOJO1YwOyUFP3hNELmpCIbyqJRENni5oz4df2ViU5vtLVoUyjDcnHX6Zh7a1iohceXTpoOkZW4MoIJfT+YlxE/YoEL+YLslbLfTP4MM/0QA+Nb/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d4XHr1wkCAWvriaoORnVrAea3swL2x2WlwtL16pD5ZQ=;
 b=bBkfF1abVmSlA6WJPPTd7gryjYkx5Jksni9+oXQAkQqWAnGProyFoUDP7Ej9DZKnuI7ktiltv3l/DaF8mJHyNPJdKj9X/qblJReMjDrXU93Qp/JRPx7jifFvnyFecQhcUF5OY3e0U/LSEOlbE6zm+AbU6bHpyEI6Y9DlscMsK0EAaP+eN/os6Zf1bjRjcSzxy0YX78ZgNmqKJCvS0z/FhzzB1cJQF8dAOK3LeXr/kOoveyQwjtFmrTGKfdmSzOJfnnnwhnPzKUwr2Gt3qqA6QjgwuzXcH3qUAUe/V5lxE7dEllmYpBMg0IC6AAiEieVt1x3W9+Q27zHGQM0EZPRgGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3696.namprd12.prod.outlook.com (2603:10b6:208:169::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Fri, 16 Apr
 2021 15:54:41 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4020.025; Fri, 16 Apr 2021
 15:54:41 +0000
To: Lee Jones <lee.jones@linaro.org>
References: <20210416143725.2769053-1-lee.jones@linaro.org>
 <20210416143725.2769053-36-lee.jones@linaro.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <59a21fb5-224e-882f-5d2f-e337e78eb7db@amd.com>
Date: Fri, 16 Apr 2021 17:54:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210416143725.2769053-36-lee.jones@linaro.org>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:5d8d:1198:63ca:8fe4]
X-ClientProxiedBy: PR0P264CA0208.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1f::28) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:5d8d:1198:63ca:8fe4]
 (2a02:908:1252:fb60:5d8d:1198:63ca:8fe4) by
 PR0P264CA0208.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1f::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.16 via Frontend Transport; Fri, 16 Apr 2021 15:54:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5375584f-5984-4251-d93e-08d900eff22e
X-MS-TrafficTypeDiagnostic: MN2PR12MB3696:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB369615548A406E3DF790C59A834C9@MN2PR12MB3696.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:159;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SUKBAfIx5QEu+s7pUQccVHigRSkcPjn6HfzkIfOeB5gwT/UBLaMAVUf3FplYOf3IFuDWnUvYaAr/mbsYHIBTFzalfcjkHLMsTP8ZoQfBHG9C7yYhuxm3k8py/A/cSOPGOTIeLOSdgj/Hlh97KwKoTn66R9K8RLo/2MLv7mCJdxgf4gj1H7aFqAkc9xjS10FGewtGED2xr63m8OdnSDP7LpeELMvpAO5iTCFJ28z3gtBX3PDWPqLaEhkOPDVKlRSMbwoVxIb2K9WkOrCBYeNgE35kGIEmOcoFC9+caKqfG9eYIc9UxSRyDYe7O9ZENnr4Lnb3WoJtCCmUx3i7GY2LWek1Rf2YXngeT8CTKJ39NhUG060P8AurZy5F6BW+e0OYsx+H8mOG76f6qlZfpzbyJGLzuo5muca0GGTC52Y9WsKsMmjNSLR1BrZdQBWN3QkDbXYFcD+HF2Fft16NDKQ+QJNgHjPUyzak0A4aBY6bs2lHhEukcvXhiW2Zfh6Qr60MiIaKAAfya56ppc4RitgETDCvNfDUdAG3kVJ3ohDeFPteNUTaEesUR/e3Paqgm++MC5ZY9BqYoCMlAh9KH5pASS5YYt0tAH/S5oyx4i62NMxY7up/M015VrV9PbNGg8lxie+2H2Wia+YqG1Wh9wGo6GE6/XmusrgGBsiABaBzqKW6d5dm7xa/nlCvvVWbswqh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(136003)(366004)(346002)(39860400002)(5660300002)(31696002)(478600001)(4326008)(8936002)(86362001)(66476007)(66574015)(66946007)(66556008)(7416002)(6666004)(31686004)(2616005)(6486002)(2906002)(54906003)(186003)(16526019)(316002)(8676002)(6916009)(52116002)(36756003)(83380400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?LzNxekYrTUJsem9KRHBXK1pOczQzOUtnMnV1dlptZ3hGWXRIRkZjQ2tscGgz?=
 =?utf-8?B?NmpobGN1OTd5anU0YlI1Mm1XS1hrSUlxNzVMTTdkWXBVTU9nYi9TNHIrSXY0?=
 =?utf-8?B?cFh0SUUvT0Q0VVJyWVVOUlJDY2cwejk3L29kR1lOL3Q1aDhlb3dneFNQMFF3?=
 =?utf-8?B?aWhXb1A5MU9uU2c4aUl0ZmdsdW1TMzMvbmpEYzIyWGN3SUhMWjVJWmV3czds?=
 =?utf-8?B?SjNNYXBubERtK1BmQmp3MkhQK0s1dzRub1doanBxWnN4S2o0Mjk0ajdMU1lk?=
 =?utf-8?B?M2phZFEzcUJmeDV6Yis2enhINCtPdThxVkVYaFFZT1VhMU91NUZSampRSEJp?=
 =?utf-8?B?dFFGcWR1Ymg0RmRhTzNzb2xjQ2hqY0YvSXY5blR4NXpoSWUxOFcwRWkzNVg5?=
 =?utf-8?B?eENBYzNRWGw4OUxwRjN0WGM0cDRDMEVIZDNPNTcvSFprMW9UMWhQYUJpTEdS?=
 =?utf-8?B?RXN3Y0M2WEkvTjFvOWxkVDZuaDRua29xVU9Cc3JTNWtueTMyWGduWG11eWVq?=
 =?utf-8?B?c1lkVHNhUmdha29MSDRRUmpIUmFzOWpndkRYRE1hN01zcllGaXVLRHZvc0lW?=
 =?utf-8?B?ZDdNNFhmTHdSZ1hsZ0xUME44ZWp5WEdRamJZRkVELzNjcGk2eHdYdWpuUVlO?=
 =?utf-8?B?TjlQN0ZqMHdhRnhySkgvbVB0RStjQ2lTTHczL0hFM0I3dWNwNmZPbVpsLy9M?=
 =?utf-8?B?OVQ2VlZzVHkzVFBNNkJqd3ZvNzFLSkFOQk9rYk5kK2krYnc0dUdPU0xndHR4?=
 =?utf-8?B?M0ZSU3FIWUtIL3lsQnFBV1hKMUlIWHBkQ045SXJuWDY3Z216Mis1WXVpZ2ZJ?=
 =?utf-8?B?VDhuRnpBaVoyUFRweXJlN0VJME10b3RhT3RnMjJ4WXdrczlncjBoek1iMnAw?=
 =?utf-8?B?VEtObXh1SjhNOTE1MWp5d0RMREErWmZpekFCTVBvRzZnWXlmTzNKT3RoVi9w?=
 =?utf-8?B?TFRkWWhmSmxHSWR0amZPOEFVMkFFb0UvZ1RhUG15OUQ2NHV5ZnR2d2ZQTHM1?=
 =?utf-8?B?dDIzdUZNNHQ4eXphd0sxa0hPTG5aaHZWNmx0eFVWTGRwdGJaQnVxMytVRUtO?=
 =?utf-8?B?ODZrRTJIY1BZWCs4cEdjdWNoNHVlQktlQ3ZQVkhFSnNTZ0VDNmtFcWVkRWJO?=
 =?utf-8?B?TFlzL3FFNVFJMllvcHZuUmY3dml0OUJQMXVMbFhtM2JrS0hYT3VidGUxdG05?=
 =?utf-8?B?cis0QWd6bTRDR3VjUGhsYmk5b0xUTkJNOUlNUjZhdnJtV3U5T1hHaDdxQk1N?=
 =?utf-8?B?Vm1DdVhFZDNobnNQQ2NaVXhSWitnUS9KWUVRQ3ppTG5WVSswS1B0TU5xZ1JT?=
 =?utf-8?B?RkJMZVRuaStCSDBwYng1RDB6cHl2elptMFRqOWJaUy90a3VQTjNzMGxLdWx5?=
 =?utf-8?B?aTl2ODRzSCtKWXV1dDM5Nm9YdEs0S3Y3c01GdmVqcVBLaE1wb3ZDUGhDMDVk?=
 =?utf-8?B?N2Uza01TUnMrdmxOU0x1dXlHTk5CbHppYkFudGNFdHBUZDFGYU5KUnVnQzRU?=
 =?utf-8?B?ZUUvRXMzR1duU21jWWlZLzcyWnpVUXBXZStjaGdyU3JvcmZFSWNsZUJOdDM0?=
 =?utf-8?B?dEwzTjdJbHluVnZ4S2JUMmRtZFJaaUFaa25kODRhaUw3eUp1TkdLOEl6b2hk?=
 =?utf-8?B?eDJ5YXpUcmZURVJKTVozQ3pPc2JSSTVNbk9qeGZpZ2o3LzIxclMzTWNkVFZy?=
 =?utf-8?B?cElNYnQweStWSkFOQU9pZjJsNnR0R0hCTXZKU0t6ekpndTcrUjVqN0M3V1B4?=
 =?utf-8?B?ZS9Kb1BUenk3UjZTQXFHTVJrVHFIdUs0dW5BRHJKS1VJNU1kRHgrUEZTVmZ4?=
 =?utf-8?B?WXZNcFdhOFBHenI0L1QvaFRrcTlibjhGM0dEODQwQVNOc1NrQXNaOHhVZm9q?=
 =?utf-8?Q?2qBsbsWclS29g?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5375584f-5984-4251-d93e-08d900eff22e
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2021 15:54:41.2654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lNXWEPIApTHtWa2GrKqQOsG3SyLigWwQjRYErEn7ShmI3y66eChP06Jtj463tbS/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3696
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Jerome Glisse <glisse@freedesktop.org>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 35/40] drm/amd/amdgpu/amdgpu_cs: Repair
 some function naming disparity
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTYuMDQuMjEgdW0gMTY6Mzcgc2NocmllYiBMZWUgSm9uZXM6Cj4gRml4ZXMgdGhlIGZvbGxv
d2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6Cj4KPiAgIGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9jcy5jOjY4NTogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlwZSBm
b3IgY3NfcGFyc2VyX2ZpbmkoKS4gUHJvdG90eXBlIHdhcyBmb3IgYW1kZ3B1X2NzX3BhcnNlcl9m
aW5pKCkgaW5zdGVhZAo+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmM6
MTUwMjogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlwZSBmb3IgYW1kZ3B1X2NzX3dhaXRfYWxs
X2ZlbmNlKCkuIFByb3RvdHlwZSB3YXMgZm9yIGFtZGdwdV9jc193YWl0X2FsbF9mZW5jZXMoKSBp
bnN0ZWFkCj4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYzoxNjU2OiB3
YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90eXBlIGZvciBhbWRncHVfY3NfZmluZF9ib192YSgpLiBQ
cm90b3R5cGUgd2FzIGZvciBhbWRncHVfY3NfZmluZF9tYXBwaW5nKCkgaW5zdGVhZAo+Cj4gQ2M6
IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzogIkNocmlzdGlh
biBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8
YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+
IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENjOiBKZXJvbWUg
R2xpc3NlIDxnbGlzc2VAZnJlZWRlc2t0b3Aub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxp
bnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoK
UmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4K
Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYyB8IDYgKysr
LS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMKPiBpbmRleCBiNWM3NjY5OTgw
NDU4Li45MDEzNmY5ZGVkZDY1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9jcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2NzLmMKPiBAQCAtNjcyLDcgKzY3Miw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2NzX3N5bmNfcmlu
Z3Moc3RydWN0IGFtZGdwdV9jc19wYXJzZXIgKnApCj4gICB9Cj4gICAKPiAgIC8qKgo+IC0gKiBj
c19wYXJzZXJfZmluaSgpIC0gY2xlYW4gcGFyc2VyIHN0YXRlcwo+ICsgKiBhbWRncHVfY3NfcGFy
c2VyX2ZpbmkoKSAtIGNsZWFuIHBhcnNlciBzdGF0ZXMKPiAgICAqIEBwYXJzZXI6CXBhcnNlciBz
dHJ1Y3R1cmUgaG9sZGluZyBwYXJzaW5nIGNvbnRleHQuCj4gICAgKiBAZXJyb3I6CWVycm9yIG51
bWJlcgo+ICAgICogQGJhY2tvZmY6CWluZGljYXRvciB0byBiYWNrb2ZmIHRoZSByZXNlcnZhdGlv
bgo+IEBAIC0xNDg4LDcgKzE0ODgsNyBAQCBpbnQgYW1kZ3B1X2NzX2ZlbmNlX3RvX2hhbmRsZV9p
b2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAgfQo+ICAgCj4gICAv
KioKPiAtICogYW1kZ3B1X2NzX3dhaXRfYWxsX2ZlbmNlIC0gd2FpdCBvbiBhbGwgZmVuY2VzIHRv
IHNpZ25hbAo+ICsgKiBhbWRncHVfY3Nfd2FpdF9hbGxfZmVuY2VzIC0gd2FpdCBvbiBhbGwgZmVu
Y2VzIHRvIHNpZ25hbAo+ICAgICoKPiAgICAqIEBhZGV2OiBhbWRncHUgZGV2aWNlCj4gICAgKiBA
ZmlscDogZmlsZSBwcml2YXRlCj4gQEAgLTE2MzksNyArMTYzOSw3IEBAIGludCBhbWRncHVfY3Nf
d2FpdF9mZW5jZXNfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiAg
IH0KPiAgIAo+ICAgLyoqCj4gLSAqIGFtZGdwdV9jc19maW5kX2JvX3ZhIC0gZmluZCBib192YSBm
b3IgVk0gYWRkcmVzcwo+ICsgKiBhbWRncHVfY3NfZmluZF9tYXBwaW5nIC0gZmluZCBib192YSBm
b3IgVk0gYWRkcmVzcwo+ICAgICoKPiAgICAqIEBwYXJzZXI6IGNvbW1hbmQgc3VibWlzc2lvbiBw
YXJzZXIgY29udGV4dAo+ICAgICogQGFkZHI6IFZNIGFkZHJlc3MKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
