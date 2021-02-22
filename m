Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F55321806
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Feb 2021 14:09:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF2A3667D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Feb 2021 13:09:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B0013667D9; Mon, 22 Feb 2021 13:09:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1803667CF;
	Mon, 22 Feb 2021 13:09:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 55BAE6107D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Feb 2021 13:09:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 49E46667D0; Mon, 22 Feb 2021 13:09:21 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2051.outbound.protection.outlook.com [40.107.94.51])
 by lists.linaro.org (Postfix) with ESMTPS id 56972667CF
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Feb 2021 13:09:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i/zH0Re/niRi9W0Epr55XYTy/qXxTMVE0lJQKkBeG+DJyVJpcYS0PT15+0TznXxk3fhXmChonemhanCMk0McHgwjqLDqOPTGZWi0bwXCqkVt/zpE/8YK5ug8SxrGAKK+UEQCtw5pRgHF9Rhnenr6UHwulwuBzqCKEz4fVa+0/bGotCxbOwaavZGOnwnn7x0IkFX6Yb1TgaDV8xOa4WDrW3bZioqNpl/OThj5rFgcjJM4b2mF87Rtp1h/Uk+gRs9LEg/cgctwXzg//R/HwC9RWbRT38HtZr5IN2axCSfmt1uolY4y0Nr3snAwruKTBGCoNO9Ix3+q+5FIkePMndVT4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DdLEgtK6zgPGxnDHWZQfaUGRc9YfUtEZb3QdOK8yDKE=;
 b=dRzbtWZMioNdo3279o29/gG9hfolTLk/S/rjrwJlA7pmZYMv0Ca8Q3u8TMnVyfa5g29HMfIvQmgDzOvEuKCqJDRzDxtn6df15OINus+K2NOhS47sDc0zTJjt+IR/C+yktfExLD0x3qlAojk/QFlD8hEJuYDj+cgcaEJzHCPgvUDUlJGHIevC+3XrnhQSqVMLnNdvjLy4sz4HI22caMBKwBPUjCN2kuqwqKU3pVCNjwTgPNk7LbX/jSvRFjETJQhIgcb4AhCjXx3UdG5zaKRn1i7gNtPn8quNiOau3Alk/JDmO1VEyAiT7Xrpgc9BsHzpRx43uSwZkBU482xMp1l86Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4390.namprd12.prod.outlook.com (2603:10b6:208:26e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.29; Mon, 22 Feb
 2021 13:09:15 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2%2]) with mapi id 15.20.3868.031; Mon, 22 Feb 2021
 13:09:15 +0000
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@linux.ie, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 yuq825@gmail.com, robh@kernel.org, tomeu.vizoso@collabora.com,
 steven.price@arm.com, alyssa.rosenzweig@collabora.com, eric@anholt.net,
 sumit.semwal@linaro.org, stern@rowland.harvard.edu
References: <20210222124328.27340-1-tzimmermann@suse.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <b190801b-b8be-c9df-f203-3e42eb97cea4@amd.com>
Date: Mon, 22 Feb 2021 14:09:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20210222124328.27340-1-tzimmermann@suse.de>
Content-Language: en-US
X-Originating-IP: [46.189.55.12]
X-ClientProxiedBy: ZRAP278CA0003.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::13) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.201.250.142] (46.189.55.12) by
 ZRAP278CA0003.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:10::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.27 via Frontend Transport; Mon, 22 Feb 2021 13:09:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 72a5d381-ab30-43d7-e16a-08d8d7330d44
X-MS-TrafficTypeDiagnostic: MN2PR12MB4390:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4390CC0EE9D261362738C9D683819@MN2PR12MB4390.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EW0gjAAwW1/2Zm8iSUFJdBH80jre+lF1daZcJeiEai45G4ZwgChrG+Qb31rN0OYn+ywJVB//kNd9JFIBcCyPwhjn1Ngx3QVBvQPaRqOhfOfmon9jFFtLo0UJMMGhdvH6nvC65F/bmVosMcrb2PPEWw+Ny/z+bdIn+IKmXfRtSSmPgTbdwrS43Kroc/qTH8Wn6C3YaojkOtOFGmgUBbNcZkQ6hsZoVGo01HOeJtUMXVI1JKxr8Ac9O5PBu5fVNp1G8DdLKGP9fgvqahysRBRAD7Cf99Z8I1SNc188lH60Ep8qAvAxzyBx7VeQEdRqyl4ZlkMqFKV1zTbodtnKm6Hw3cs8kTkgcADYxEk0jYqdVx3W0eHGaHlkTjLfBAy/vw6i3BtBBKrEJ3IUjJKT4fCM8htSywmxEHcm7aJne0ZUSApbL9InC30rDEqsqJx9WQVHdR1/1tjyUcU1sYtA9hnPdUiETHmZdti8Dhmj6nqGLePnVWyHccvHGykyitnnqug3IG+D+R0zxtrq+9amE2Ura2TgPLlJhNixEa2AzzKaHS3OfoCG25zKJ6yNpDxb8jYgW6W5WrouwiOk5JeiIwxJNA7lHJG3MYTP4byVF333Sv1/7WaIjtNptaqdsENEEZRL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(376002)(366004)(396003)(136003)(66476007)(66556008)(921005)(4326008)(66946007)(31686004)(83380400001)(7416002)(86362001)(26005)(2616005)(8936002)(6486002)(186003)(316002)(36756003)(478600001)(16526019)(8676002)(956004)(2906002)(16576012)(52116002)(5660300002)(6666004)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?L0c3NnJlL2ltNEZNclU5V1B6dHo5NlhCb0lBTFJkc2FGaCtmblhwZjdGRGRk?=
 =?utf-8?B?Q1AwMlY4NlEyOHM5RUp5a0dvR0g2c1E5Z2ZkR3hqajdNTFF6S1NPYng3bDh4?=
 =?utf-8?B?R1c3WVNrS1pKZkJlMUNIaGZhVzM2SEdRbEFhekJIUW40OVVVRk1zZGs5YmM3?=
 =?utf-8?B?MEJ4YmlvamlVT2F3ZE0weGJMZ3NOK2RRbGdTNG9RenUvNzkzV1U1aEJwY1Iz?=
 =?utf-8?B?WEdKVkVlcllmT2twQUdLZEZSTXFnTXZnaEJKRTJJempPeXZXTVdEaUhRS1Q5?=
 =?utf-8?B?K2JSZFk2anpHVHdPMGl4Y1FrNjNQTEViZ0dUMmt4a2lucUFwMVNaK0t0c1Y0?=
 =?utf-8?B?NzhtU2ZXdDVsbmtzYmhwcHU5VXZzSWNpamw3clVjS2VkSG4xTm5HZFFEOGJo?=
 =?utf-8?B?dU5XZUpFeWY0ZGM3aEF4ZlprbUNDbTVCWkl6NmluRUlvdjNnczV6a0dSQXl3?=
 =?utf-8?B?QkJNL0RWd09SQjBZaXY3RHVVaFpGV2xNQ2xaaDhEYjlDNTFqUTE3KzV3SHRn?=
 =?utf-8?B?dFRMb0dQQUx6T0hXNTlvbkg2akJMcEdzVlRuM0VFeVdKUGNsd0xqTzBzdU5C?=
 =?utf-8?B?WFZHRjZHRGlHNlBPdXRjZFdVZkRicnhPRnhhRWNuNFVXSERIdERnQ0NSZ21X?=
 =?utf-8?B?QUNOMUR5dEw5ODVSL0ZqajE5VDNvd2NFaWNiWWlTYkhMdnV4OWYrcXlGcUlC?=
 =?utf-8?B?eEZxOHliSC9WdjA5VDhLR2JjdkRZdkxxZWFwdGNzQ000VUJCcXlEajhVeWEy?=
 =?utf-8?B?ZWlxcmdMZHRRSG96aFpKQzRmNjVpWkV3QnpjTi84L1dncGlIM1MrczNMZE1n?=
 =?utf-8?B?RkpFeVZwK2llbDBmdTBQWTlzZ1BxQWk2RXJNeFJtTUVwdU05U0JsYi9DdFBv?=
 =?utf-8?B?N0dFa2VhQWlPaG5uSTR3RnY5Z2tSODRjR2RnM1p6YnZOWHV2M3BSSGR3UzVK?=
 =?utf-8?B?WDk3QnNvdDhnWGJaYlNiOFhTTVpjQldsVVVOZFRMS1hTeFZYaE1JTHg0TVVK?=
 =?utf-8?B?L0Q1QTFGOHdVVTU5M0o2SFBNcEM1ZHRvLzB4STUxeEFoK3pDOGNUdHF6MUIw?=
 =?utf-8?B?RmdPd1JVNHgvOWNvZi96YUd3ZEFzUHM1akZMeW03OGt1LzRlc2UzdG9wU29q?=
 =?utf-8?B?Q28zdU5BLy9wUmhyVXV2S3dzOVcyZXNmR1R5U2Q2V0dCcDI0MlVMcm5scHRj?=
 =?utf-8?B?QzhQSENBY1B5QzZNSXFhM3FCZ2RGL1VuMDJoVUFySDQ0cU5NTnB4cVJlQXN5?=
 =?utf-8?B?MDhvdnVsY2hmRFBPd3NJSWVLdFB1Umc3WWFBeDhqSTRITmllMGZnMVdseGdT?=
 =?utf-8?B?WE5hTkxSNU1UcGI1Q0pCcVdTTXE1dGxTbGpjWEE2YWVqZHl6SHgvS2Nyc2Zt?=
 =?utf-8?B?T1gzbXp6QnREeHB3VGt5WXoxaklzQUUvVTQrdWpYNkoxV0FyWi9nNGhqd2Iv?=
 =?utf-8?B?RncwdGN2MlhVYlN1RzdDWlVkRDJKdG5NUlBNYWxPWE5rK1FXb09taDYvdTNE?=
 =?utf-8?B?aUdEeWRhcTdXOEV3aG9YWmFhOGhyMjFVQy9UNGg0UXQ2aCtDYWE2ekYrY01U?=
 =?utf-8?B?T3FpRWJweUQ2VHAvWTRadG01SWFRcDE1eG1EUE91U0poUnFJdWh6aGR5YjdL?=
 =?utf-8?B?UEpmeEx2Skc3RTBReHR0NHhydUt5ZXFYa3NFZWtiYVEwN0p4WlU1bUJHa1JS?=
 =?utf-8?B?WWV5OEw3dnVlMkVvakszaktubXU1M3gxSFdoNkxaaUowTk5pdmFvaWVpdE1q?=
 =?utf-8?Q?pb0AeJQ3AVMUn0UOUxiZo7Ku9NR3wE6Zow+0j5R?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72a5d381-ab30-43d7-e16a-08d8d7330d44
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2021 13:09:15.0230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GSGWGC7GzC45zpvU5LNy5h9LFe4r2LjfkiBOCnlWnYDKuKLlrxkACyfcnpaO5rl/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4390
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, lima@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v2 0/3] drm/prime: Only call
 dma_map_sgtable() for devices with DMA support
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

CgpBbSAyMi4wMi4yMSB1bSAxMzo0MyBzY2hyaWViIFRob21hcyBaaW1tZXJtYW5uOgo+IFVTQi1i
YXNlZCBkcml2ZXJzIGNhbm5vdCB1c2UgRE1BLCBzbyB0aGUgaW1wb3J0aW5nIG9mIGRtYS1idWYg
YXR0YWNobWVudHMKPiBjdXJyZW50bHkgZmFpbHMgZm9yIHVkbCBhbmQgZ20xMnUzMjAuIFRoaXMg
YnJlYWtzIGpvaW5pbmcvbWlycm9yaW5nIG9mCj4gZGlzcGxheXMuCj4KPiBUaGUgZml4IGlzIG5v
dyBhIGxpdHRsZSBzZXJpZXMuIFRvIHNvbHZlIHRoZSBpc3N1ZSBvbiB0aGUgaW1wb3J0ZXIKPiBz
aWRlIChpLmUuLCB0aGUgYWZmZWN0ZWQgVVNCLWJhc2VkIGRyaXZlciksIHBhdGNoIDEgaW50cm9k
dWNlcyBhIG5ldwo+IFBSSU1FIGNhbGxiYWNrLCBzdHJ1Y3QgZHJtX2RyaXZlci5nZW1fcHJpbWVf
Y3JlYXRlX29iamVjdCwgd2hpY2ggY3JlYXRlcwo+IGFuIG9iamVjdCBhbmQgZ2l2ZXMgbW9yZSBj
b250cm9sIHRvIHRoZSBpbXBvcnRpbmcgZHJpdmVyLiBTcGVjaWZpY2FsbHksCj4gdWRsIGFuZCBn
bTEydTMyMCBjYW4gbm93IGF2b2lkIHRoZSBjcmVhdGlvbiBvZiBhIHNjYXR0ZXIvZ2F0aGVyIHRh
YmxlCj4gZm9yIHRoZSBpbXBvcnRlZCBwYWdlcy4gUGF0Y2ggMSBpcyBzZWxmLWNvbnRhaW5lZCBp
biB0aGUgc2Vuc2UgdGhhdCBpdAo+IGNhbiBiZSBiYWNrcG9ydGVkIGludG8gb2xkZXIga2VybmVs
cy4KCk1obSwgdGhhdCBzb3VuZHMgbGlrZSBhIGxpdHRsZSBvdmVya2lsbCB0byBtZS4KCkRyaXZl
cnMgY2FuIGFscmVhZHkgaW1wb3J0IHRoZSBETUEtYnVmcyBhbGwgYnkgdGhlbSBzZWx2ZXMgd2l0
aG91dCB0aGUgCmhlbHAgb2YgdGhlIERSTSBmdW5jdGlvbnMuIFNlZSBhbWRncHUgZm9yIGFuIGV4
YW1wbGUuCgpEYW5pZWwgYWxzbyBhbHJlYWR5IG5vdGVkIHRvIG1lIHRoYXQgaGUgc2VlcyB0aGUg
RFJNIGhlbHBlciBhcyBhIGJpdCAKcXVlc3Rpb25hYmxlIG1pZGRsZSBsYXllci4KCkhhdmUgeW91
IHRob3VnaHQgYWJvdXQgZG9pbmcgdGhhdCBpbnN0ZWFkPwoKQ2hyaXN0aWFuLgoKPgo+IFBhdGNo
ZXMgMiBhbmQgMyB1cGRhdGUgU0hNRU0gYW5kIENNQSBoZWxwZXJzIHRvIHVzZSB0aGUgbmV3IGNh
bGxiYWNrLgo+IEVmZmVjdGl2ZWx5IHRoaXMgbW92ZXMgdGhlIHNnIHRhYmxlIHNldHVwIGZyb20g
dGhlIFBSSU1FIGhlbHBlcnMgaW50bwo+IHRoZSBtZW1vcnkgbWFuYWdlcnMuIFNITUVNIG5vdyBz
dXBwb3J0cyBkZXZpY2VzIHdpdGhvdXQgRE1BIHN1cHBvcnQsCj4gc28gY3VzdG9tIGNvZGUgY2Fu
IGJlIHJlbW92ZWQgZnJvbSB1ZGwgYW5kIGcxMnUzMjAuCj4KPiBUZXN0ZWQgYnkgam9pbmluZy9t
aXJyb3JpbmcgZGlzcGxheXMgb2YgdWRsIGFuZCByYWRlb24gdW5kZXIgR25vbWUvWDExLgo+Cj4g
djI6Cj4gCSogbW92ZSBmaXggdG8gaW1wb3J0ZXIgc2lkZSAoQ2hyaXN0aWFuLCBEYW5pZWwpCj4g
CSogdXBkYXRlIFNITUVNIGFuZCBDTUEgaGVscGVycyBmb3IgbmV3IFBSSU1FIGNhbGxiYWNrcwo+
Cj4gVGhvbWFzIFppbW1lcm1hbm4gKDMpOgo+ICAgIGRybTogU3VwcG9ydCBpbXBvcnRpbmcgZG1h
YnVmcyBpbnRvIGRyaXZlcnMgd2l0aG91dCBETUEKPiAgICBkcm0vc2htZW0taGVscGVyOiBJbXBs
ZW1lbnQgc3RydWN0IGRybV9kcml2ZXIuZ2VtX3ByaW1lX2NyZWF0ZV9vYmplY3QKPiAgICBkcm0v
Y21hLWhlbHBlcjogSW1wbGVtZW50IHN0cnVjdCBkcm1fZHJpdmVyLmdlbV9wcmltZV9jcmVhdGVf
b2JqZWN0Cj4KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuYyAgICB8IDYy
ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3No
bWVtX2hlbHBlci5jICB8IDM4ICsrKysrKysrKystLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2Ry
bV9wcmltZS5jICAgICAgICAgICAgIHwgNDMgKysrKysrKysrKystLS0tLS0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9saW1hL2xpbWFfZHJ2LmMgICAgICAgICB8ICAyICstCj4gICBkcml2ZXJzL2dwdS9k
cm0vcGFuZnJvc3QvcGFuZnJvc3RfZHJ2LmMgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL3Bh
bmZyb3N0L3BhbmZyb3N0X2dlbS5jIHwgIDYgKy0tCj4gICBkcml2ZXJzL2dwdS9kcm0vcGFuZnJv
c3QvcGFuZnJvc3RfZ2VtLmggfCAgNCArLQo+ICAgZHJpdmVycy9ncHUvZHJtL3BsMTExL3BsMTEx
X2Rydi5jICAgICAgIHwgIDggKystLQo+ICAgZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfYm8uYyAg
ICAgICAgICAgIHwgIDYgKy0tCj4gICBkcml2ZXJzL2dwdS9kcm0vdjNkL3YzZF9kcnYuYyAgICAg
ICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfZHJ2LmggICAgICAgICAg
IHwgIDUgKy0KPiAgIGluY2x1ZGUvZHJtL2RybV9kcnYuaCAgICAgICAgICAgICAgICAgICB8IDEy
ICsrKysrCj4gICBpbmNsdWRlL2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuaCAgICAgICAgfCAxMiAr
Ky0tLQo+ICAgaW5jbHVkZS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuaCAgICAgIHwgIDYgKy0t
Cj4gICAxNCBmaWxlcyBjaGFuZ2VkLCAxMjAgaW5zZXJ0aW9ucygrKSwgODggZGVsZXRpb25zKC0p
Cj4KPiAtLQo+IDIuMzAuMQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
