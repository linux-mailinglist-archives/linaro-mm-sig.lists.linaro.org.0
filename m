Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 594C64679E5
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Dec 2021 16:00:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A5D461A48
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Dec 2021 15:00:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B2D3261A43; Fri,  3 Dec 2021 15:00:28 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DF3861A43;
	Fri,  3 Dec 2021 15:00:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3174161902
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Dec 2021 15:00:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2534F61A43; Fri,  3 Dec 2021 15:00:23 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2040.outbound.protection.outlook.com [40.107.237.40])
 by lists.linaro.org (Postfix) with ESMTPS id 0427461902
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Dec 2021 15:00:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m7VOqfEP4bWkA/ZcLThAXC3y09IsgzOcKugo+NNQAZ3FQVX75rMuFcOa+1S6XY9M7gPaGQtuLZhf7fWo4rOOVBFeeGaVGYOr6gSmtb0KdQerEpUVSwkhFYwXI5AtTNGXF9LtaFtExpPiEhdS91Ub6mM+rFKaCPeRzADcpkg4wGZ0NKHWSQL5OUiVFEAKSCPs2c94PZyskMJtgGQdXcn7Eo5iP32iANy0rRX4LTEG8RPxN3ZAraKaTUxBF4amE1EkuM1K+vDIDDpdrCh+lhynnfuY5Kt4r/R6HVuxIv5zqJMDtCG8bWBXSnXXC/xp9l//nsLSMFV0z0oSP1In+Pdt9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V4y58UkD+S9gbK/BlC4+sQ5vKWpZPB4VdHih/3gYXbA=;
 b=ZJQz2MYFdf8onyAsoh0TDP4AxC1KUhNXuEu4A0Xk+VasIobkbgV8wjfBOKE4jOMoEVA4gCIz5ozun3lFQck8I3GHiBNEHvQjBZr2OZ63Mt/AQeJzucuJ80x0GX11tkNDWlTXvf2bCaXxGMXDOeZ4CFMvfujEhTau9uTFkxSpIKda9gbhwmq3izZ17KR7HXPAwhqqfASPawuRxYu8u/Zqz9lC6tlsL3RwbZRFoCch9rneMRKYEqPCnM+UK0bS9L7weGd07QkkllwuE53AwLcgi3afdSqQrtNkIKzALMRt4aWPMeCmoIJ5btSBSK/17YJJUNPt+VJ0464X5x8UP4gzBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V4y58UkD+S9gbK/BlC4+sQ5vKWpZPB4VdHih/3gYXbA=;
 b=AIvAcBk53f0SWfCNeDMuxuQzpKdOc0BuHZL2vbKJnB7jRc3IZnViko8LHaWvSXUdIhvl2TRwfYnd4c75EXRgJKC4YWlYJbYiFYR4Isk0ATpaSAh+Ag6n/Xixd6UaOTk7g163qX12iqAr7H46/NVp4kBBWp8qOsSdTNoP5onpGN4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MWHPR12MB1773.namprd12.prod.outlook.com
 (2603:10b6:300:10d::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Fri, 3 Dec
 2021 15:00:18 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::d16c:a6d5:5d2e:f9d4]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::d16c:a6d5:5d2e:f9d4%12]) with mapi id 15.20.4734.028; Fri, 3 Dec 2021
 15:00:18 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>
References: <20211130121936.586031-1-thomas.hellstrom@linux.intel.com>
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
 <8a7dbf22-727d-c1ec-1d3f-75e23394fee8@amd.com>
 <d4a9cb5a554ffc3af3d30ecacad6e57533eb7f3b.camel@linux.intel.com>
 <f8f1500c-170d-ccf9-ac2d-1484bbdc587e@amd.com>
 <96eca78d-2b92-cce0-0aee-2d5f72c26bdf@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <4d3c9eb5-f093-84c9-47da-ee27630ee646@amd.com>
Date: Fri, 3 Dec 2021 16:00:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <96eca78d-2b92-cce0-0aee-2d5f72c26bdf@linux.intel.com>
Content-Language: en-US
X-ClientProxiedBy: FR2P281CA0010.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::20) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [IPv6:2a02:908:1252:fb60:4e4f:2719:8872:ca0c]
 (2a02:908:1252:fb60:4e4f:2719:8872:ca0c) by
 FR2P281CA0010.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:a::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Fri, 3 Dec 2021 15:00:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f4281a39-0da4-468b-70ce-08d9b66d9e8b
X-MS-TrafficTypeDiagnostic: MWHPR12MB1773:
X-Microsoft-Antispam-PRVS: <MWHPR12MB17738D7965DBBF0B3CFA8DA0836A9@MWHPR12MB1773.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zZdND2TRBoKAMTh8vRuuY8Eao97rDIJErZovXaijwPzzuTXNX9uW6N0j+wzEX4aEYSuDSOp9YQUWsoaz6IcNsnFN9Jmg+toLfvKCgFfCa5jVxXDj2UH35dXgkoCmoF5FI0Dvg/RO0CkE3WHzOmPw6bbFWdNz86ZIqJaJaz7OUU431GH6u6ZZ5YvdzyvA27pkcOZEWeTqBjjaj4jt67RpxdUkvMWdfeUyq9hVydL822dHnDwdoaAeajv2CWx+txVpE+tcwxpACK2QcXLA7VC+QfSbjW0Uui4r7dVvwk/hvmbAHX3S5hZ2qL6+cB0XKct+iCsUxDWa7z3vs/LAesRscny+57pBezgLxel6xB48qc+SEGpjsRJqbXlw4Ehf5ZGrSdbgz/trZHxTb0vn5iaaz5esf9gPwhSr1O6jlG4wVrCUAlBzGFG1b7JZ3MPnUATI2w5hgHh1kddcNYZCV0bJrHIva0Cw448kSbWbKDWwK1gx8si9BodQHCbBrTyYfCV39Zwuq638xjAGHIslx/eVYCnryjqAscpViGvuhQ61OpEm4zr1wZfic7bqCm4XHdaX6UyIV2+hGEq4H1Wl6nhd2gSwDkdsev5ZuclOhtSI62qkP/HXxiiTK/xsDmV5rkROEyEfoPqnvR1frQUv2L2BS7zWn/6URoomCKiFwckrYh49E1nXLEU8alAKUx3140IVhNmRMVYr5Hlr2wTqa34g+VFX5SLm2vgV1Potw+D3ik9+cEd33TPsuqL8/LX98xrC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(186003)(86362001)(6486002)(36756003)(110136005)(2616005)(66556008)(4326008)(66574015)(66476007)(8936002)(508600001)(38100700002)(8676002)(31696002)(53546011)(316002)(5660300002)(6666004)(66946007)(31686004)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MVdIN3l3Mmo4TnZLTG5DeDRlQ08zTTF5VXJ4V0kxTU9DV1dGOHdjY0hqNWRp?=
 =?utf-8?B?R1ZoWEgyclU5UXZ3V2Zqa1JVNndnNEQwbDRVQmt2OGRwMnZVYktPR3V4eE5C?=
 =?utf-8?B?UjU5SGdnaEdlS1ZzdXhubEZIL2RmY1ZYbXc3QnVKejR1UmFveGYrNE1RVVRZ?=
 =?utf-8?B?NG96dEV1c3pGRTZjR2ZkM3Q3NEFyUXBLQllzS0crR2ViRHVZYkVWK2UwOHB6?=
 =?utf-8?B?c1FFa0hqYkhnQ0J5QUNCRU5SNThHL01XeVZ3RzV4V0FsQW1yVzAva0FxNGNU?=
 =?utf-8?B?YUt0a3ArUjZBTXR3TlFGVVlZNWxuSngxd0tPU2lsdGdUYm9nV1FtR2traVdT?=
 =?utf-8?B?aEg5MXZiakgxV01yTE0veTFORTNURG5Ba0l6WEE2RE11TGpkWHY2V29YN2JL?=
 =?utf-8?B?MVdqY2lDNkVuV2Z4Rzl2bzF1dFB2bHhlYlc2M2MxZ1dqN0N0SkN0YXIxb2VO?=
 =?utf-8?B?UHNwcTQrRXJBWmlRQ1lqbDNXZEc0UkRVVHlIZElhZjJCWTlyUndxQjljbXRU?=
 =?utf-8?B?SDdXeDZIT1ExdXNCaXAwS2ZML3diNVdZSCtKYko1MUU5b3ZKY2dKY0IrK0dP?=
 =?utf-8?B?U1AzY3JQNnZoWktuZWdDZm5PYnJjVDhNRk8zV1MxeUpDbFg3bi9LZWtZaS9T?=
 =?utf-8?B?eDBpcWF2K2pQS3NrRlhoRXB4TVMwYjM4eklEVXZ2RkRNeUNTRVhSNFFWUmU5?=
 =?utf-8?B?NG9LT2lsU1VGcSt4OHVkWnowVkpMRUJMbFFYOEpudnEyZGxQNEhKaW1iWThn?=
 =?utf-8?B?M1VpTXdzdU9sWDFsSUlFNEhQNjdXajZIbzRGUENWMFhOd2JtdGR2dUdPWndh?=
 =?utf-8?B?R1czd29rTkoxSFF6QXZUNzhFbm9Cc2JBQlZ3WUc3UHF0YXlhN3ZxaTk4Vkt2?=
 =?utf-8?B?L0h6eDR1M1NrUGVyb0o2NmlHRHg4bEhDMFRXUGxtUEtxa0hBVUtsMThKN0ZH?=
 =?utf-8?B?K3d5bnlBZXE5WkY0YzcwL25ieG9SVjVPMC8zT3pvakxzck02Q2oyUlVRRmpH?=
 =?utf-8?B?M2Y4ZmFheG9pd20wdGdLa2RabkNscUhrMkN0N0VhWGJQc25ld29kU2RkNXQ2?=
 =?utf-8?B?L21sVlRsZmxYTmZTM21RMmRVd2VQaEw5TnF6RkwxN3hTcE1uUm92YjZzemFl?=
 =?utf-8?B?T24zOFdPWTRuNHBoYTcwcllvQ2xIelNUbXl3T3lJNTFrUmxkTVVWRXJtTWtU?=
 =?utf-8?B?c0cvRjhqV1VrMXFJQVh4U04zTFhUZkFaUUxTVUs5a2VSU28xeDZwTmt1aVN2?=
 =?utf-8?B?SEJZaS9iUml2ZktUUVRFcGc5cHlMMzNNa28xbWRhcnZZSEJmQ1pIVG53V3gv?=
 =?utf-8?B?Z2JQOUVrOVJ0am9BbCtta0VkRkIvai83a0dMSDIvbnlCeUdRaG5UbzBBK1lr?=
 =?utf-8?B?OE95dWduUXpMSDNsVHVPWWV4NXF2MGlFMUJ2Ui9vWUJGa2pjbGU4eENKeUxH?=
 =?utf-8?B?ejJ4Y0xBMHE4T1RGakxWcG5YT2RyZVVOcUg5NlhXQjl6V3JHcjNiUkprekpE?=
 =?utf-8?B?N1JXSTljcUIyVzVHT3JRbC9XQ0YxdG9SL2FzVEtoRUZ0RXdkU2orbGwrcWg2?=
 =?utf-8?B?NkdhUThEWkRqQ2MwekxETkhvTmx0ck1VdnFqd2tBemx6dFoweDViQjlBcmxp?=
 =?utf-8?B?RS9RSU9HNlVrUUtYTHplQmNiQzNOWmZkY0RaQ0FDTHhyU2g3UjhMTjR2M2tZ?=
 =?utf-8?B?d1NnZ2QvQ05OelVJaldDeTRhc1lqRkxvbVhvdGpCbFNIYms1eTlUNmRRMmRP?=
 =?utf-8?B?QkQxYmhQOE1ydURKNmgzNGRxZDBOaXNHY0lxQzF4cUNjZ1lTaGI0VXdPK0VR?=
 =?utf-8?B?VThFcGdGNWZ3elZIbFh6Ylh0ekszcnUxUlU0aHUxL2xiakg4ZzdnWm1DU2dW?=
 =?utf-8?B?ak1OVVFOc25NblBrdWxGb0d0Vk5OcXkvcFVuaUNvZjVId0c1K3VteFYzZC9D?=
 =?utf-8?B?UzNjYjNaM3B5c0pPS210aENNaXVUZHY1ZzNXZHZySC9ZWmVHc1pWbDhFNkYx?=
 =?utf-8?B?Z2xGZEtYbE9VY2xRK3lCT3gxcHhRLzdDSHE2bzhoQWhDWmUrMXQrRnlnQUl3?=
 =?utf-8?B?bTJZVi9RK3JaSXEyeW5DZWNxNU1yYWU1bHBsSDNpL1A0RERhbkRrbzB3T0g5?=
 =?utf-8?B?S20yVkVHa0tsMUN4VzMxVlZPdXREZ1JyYU5FOHJMQ1JsY3JKaHpXUlNMMkFS?=
 =?utf-8?Q?rL+b4TOFmL8lAgMVz5Sxlps=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4281a39-0da4-468b-70ce-08d9b66d9e8b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2021 15:00:17.8624 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nSeHGz27xaq2cYlI+twCKCnFLzYNgbx7xaXll3mBJVQ9QGR93B3xyYSHnRrtQfxA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1773
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

QW0gMDMuMTIuMjEgdW0gMTU6NTAgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPgo+IE9uIDEy
LzMvMjEgMTU6MjYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IFtBZGRpbmcgRGFuaWVsIGhl
cmUgYXMgd2VsbF0KPj4KPj4gQW0gMDMuMTIuMjEgdW0gMTU6MTggc2NocmllYiBUaG9tYXMgSGVs
bHN0csO2bToKPj4+IFtTTklQXQo+Pj4+IFdlbGwgdGhhdCdzIG9rIGFzIHdlbGwuIE15IHF1ZXN0
aW9uIGlzIHdoeSBkb2VzIHRoaXMgc2luZ2xlIGRtYV9mZW5jZQo+Pj4+IHRoZW4gc2hvd3MgdXAg
aW4gdGhlIGRtYV9mZW5jZV9jaGFpbiByZXByZXNlbnRpbmcgdGhlIHdob2xlCj4+Pj4gbWlncmF0
aW9uPwo+Pj4gV2hhdCB3ZSdkIGxpa2UgdG8gaGFwcGVuIGR1cmluZyBldmljdGlvbiBpcyB0aGF0
IHdlCj4+Pgo+Pj4gMSkgYXdhaXQgYW55IGV4Y2x1c2l2ZS0gb3IgbW92aW5nIGZlbmNlcywgdGhl
biBzY2hlZHVsZSB0aGUgbWlncmF0aW9uCj4+PiBibGl0LiBUaGUgYmxpdCBtYW5hZ2VzIGl0cyBv
d24gR1BVIHB0ZXMuIFJlc3VsdHMgaW4gYSBzaW5nbGUgZmVuY2UuCj4+PiAyKSBTY2hlZHVsZSB1
bmJpbmQgb2YgYW55IGdwdSB2bWFzLCByZXN1bHRpbmcgcG9zc2libHkgaW4gbXVsdGlwbGUKPj4+
IGZlbmNlcy4KPj4+IDMpIE1vc3QgYnV0IG5vdCBhbGwgb2YgdGhlIHJlbWFpbmluZyByZXN2IHNo
YXJlZCBmZW5jZXMgd2lsbCBoYXZlIGJlZW4KPj4+IGZpbmlzaGVkIGluIDIpIFdlIGNhbid0IGVh
c2lseSB0ZWxsIHdoaWNoIHNvIHdlIGhhdmUgYSBjb3VwbGUgb2Ygc2hhcmVkCj4+PiBmZW5jZXMg
bGVmdC4KPj4KPj4gU3RvcCwgd2FpdCBhIHNlY29uZCBoZXJlLiBXZSBhcmUgZ29pbmcgYSBiaXQg
aW4gY2lyY2xlcy4KPj4KPj4gQmVmb3JlIHlvdSBtaWdyYXRlIGEgYnVmZmVyLCB5b3UgKk1VU1Qq
IHdhaXQgZm9yIGFsbCBzaGFyZWQgZmVuY2VzIHRvIAo+PiBjb21wbGV0ZS4gVGhpcyBpcyBkb2N1
bWVudGVkIG1hbmRhdG9yeSBETUEtYnVmIGJlaGF2aW9yLgo+Pgo+PiBEYW5pZWwgYW5kIEkgaGF2
ZSBkaXNjdXNzZWQgdGhhdCBxdWl0ZSBleHRlbnNpdmVseSBpbiB0aGUgbGFzdCBmZXcgCj4+IG1v
bnRoLgo+Pgo+PiBTbyBob3cgZG9lcyBpdCBjb21lIHRoYXQgeW91IGRvIHRoZSBibGl0IGJlZm9y
ZSBhbGwgc2hhcmVkIGZlbmNlcyBhcmUgCj4+IGNvbXBsZXRlZD8KPgo+IFdlbGwgd2UgZG9uJ3Qg
Y3VycmVudGx5IGJ1dCB3YW50ZWQgdG8uLi4gKEkgaGF2ZW4ndCBjb25zdWx0ZWQgRGFuaWVsIAo+
IGluIHRoZSBtYXR0ZXIsIHRiaCkuCj4KPiBJIHdhcyB1bmRlciB0aGUgaW1wcmVzc2lvbiB0aGF0
IGFsbCB3cml0ZXMgd291bGQgYWRkIGFuIGV4Y2x1c2l2ZSAKPiBmZW5jZSB0byB0aGUgZG1hX3Jl
c3YuCgpZZXMgdGhhdCdzIGNvcnJlY3QuIEknbSB3b3JraW5nIG9uIHRvIGhhdmUgbW9yZSB0aGFu
IG9uZSB3cml0ZSBmZW5jZSwgCmJ1dCB0aGF0IGlzIGN1cnJlbnRseSB1bmRlciByZXZpZXcuCgo+
IElmIHRoYXQncyBub3QgdGhlIGNhc2Ugb3IgdGhpcyBpcyBvdGhlcndpc2UgYWdhaW5zdCB0aGUg
bWFuZGF0b3J5IAo+IERNQS1idWYgYmV2aGF2aW9yLCB3ZSBjYW4gY2VydGFpbmx5IGtlZXAgdGhh
dCBwYXJ0IGFzIGlzIGFuZCB0aGF0IAo+IHdvdWxkIGVsaW1pbmF0ZSAzKS4KCkFoLCBub3cgdGhh
dCBzb21ld2hhdCBzdGFydHMgdG8gbWFrZSBzZW5zZS4KClNvIHlvdXIgYmxpdCBvbmx5IHdhaXRz
IGZvciB0aGUgd3JpdGVzIHRvIGZpbmlzaCBiZWZvcmUgc3RhcnRpbmcgdGhlIApibGl0LiBZZXMg
dGhhdCdzIGxlZ2FsIGFzIGxvbmcgYXMgeW91IGRvbid0IGNoYW5nZSB0aGUgb3JpZ2luYWwgY29u
dGVudCAKd2l0aCB0aGUgYmxpdC4KCkJ1dCBkb24ndCB5b3UgdGhlbiBuZWVkIHRvIHdhaXQgZm9y
IGJvdGggcmVhZHMgYW5kIHdyaXRlcyBiZWZvcmUgeW91IAp1bm1hcCB0aGUgVk1Bcz8KCkFueXdh
eSB0aGUgZ29vZCBuZXdzIGlzIHlvdXIgcHJvYmxlbSB0b3RhbGx5IGdvZXMgYXdheSB3aXRoIHRo
ZSBETUEtcmVzdiAKcmV3b3JrIEkndmUgYWxyZWFkeSBzZW5kIG91dC4gQmFzaWNhbGx5IGl0IGlz
IG5vdyBwb3NzaWJsZSB0byBoYXZlIG1vcmUgCnRoYW4gb25lIGZlbmNlIGluIHRoZSBETUEtcmVz
diBvYmplY3QgZm9yIG1pZ3JhdGlvbnMgYW5kIGFsbCBleGlzdGluZyAKZmVuY2VzIGFyZSBrZXB0
IGFyb3VuZCB1bnRpbCB0aGV5IGFyZSBmaW5pc2hlZC4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4K
PiAvVGhvbWFzCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==
