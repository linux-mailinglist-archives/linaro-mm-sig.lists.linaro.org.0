Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B71B782A5D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Aug 2023 15:21:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E52F23EF33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Aug 2023 13:21:06 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2064.outbound.protection.outlook.com [40.107.93.64])
	by lists.linaro.org (Postfix) with ESMTPS id 050D93EF33
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Aug 2023 13:21:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=vPRHOtyF;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.64 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dcJcXCaECjE3teyhM/lTUi3M216Yfwy/QwdBdDU6tRGI3iD3uoDAPXxyPJU+JDTrLbhx2a5LU1qkr/YVRM4Hi8bwWdyqc+y3/V7v5wifbDd/SFtRKsc8FC2MJN1PYgyMu+Y2cagSRw7uHcVirDmoCcbQ1EIMZLCVupSD0qYGZ5vYogkYtWY06zaOtLsvK7lMfUGNgHuLAQm16HiNY8FRHzJH8Ftd8dNIKmzS43g3mt/gGgBIvUgdwC4KRtjdkheB2tuNIVSKQvJq71clFKVhlLpIaHp8WYJZdBkzvdoHDbpcbRZT52pCbvcqVI2hWAYmky/5FH2Xs1dlxHgjssUkqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8NaH/Yy7wU8L8b1kcl187ouhYT2KU/G5D157CVusWrA=;
 b=FXqGS7zDaseIW2omCW4EsL7g47JrxL+2y2w4u2HkQ86gpJ/eY6Zv/7xMpfdivKhoGxD0tqoj8de1exp8MhHFF3SrtARMiQJTUfRtNH9gr0uJYZvTBiea5FrFNDnRrwPGkgl3Vu18aS5Z9i3iLbWr8bIEpHY5tsPpfpcf8iXUCyWr1Zs8AMtfLebFgxCkyZe2PUWOrpHmcsLy1ZD2JmojDX9cFZP4R8xaJ9eKOW/SWTp9twrgEuzmUwa8ZZPq9A68KjlvJn9IAkSqMIqN8R1zAQ2rni1xUgbWu16lQ3+MYTlKr1SFpmOVe9RV6jl6VW3ghQBAoHnrq+p0VCnkjra8EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8NaH/Yy7wU8L8b1kcl187ouhYT2KU/G5D157CVusWrA=;
 b=vPRHOtyFkTm4HmG/Nr2emjEbRy/HAhiRe71LdGLXdalGVR6/oI/LM6iyvObvvkYkQQ28HOirnezfRuJLpp5BvonwOzQooqTbP0cJ8e35485QNx20f74mB/qCvk2VYwvsAwz2Hygb9+n1mJ/OdHCY/RUqYS+Wxxqz01FHUPxbVGQ=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by IA1PR12MB8224.namprd12.prod.outlook.com (2603:10b6:208:3f9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Mon, 21 Aug
 2023 13:20:59 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::3d:c14:667a:1c81]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::3d:c14:667a:1c81%4]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 13:20:59 +0000
Message-ID: <b74a5cc3-8174-67f3-17ab-2e8a7d8fa1a6@amd.com>
Date: Mon, 21 Aug 2023 15:20:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Mirsad Todorovac <mirsad.todorovac@alu.unizg.hr>,
 linux-kernel@vger.kernel.org
References: <43668e49-c2c0-9979-9de3-b4904c2a8f82@alu.unizg.hr>
 <36b4e667-c287-1614-fe1f-5e772850d1fb@alu.unizg.hr>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <36b4e667-c287-1614-fe1f-5e772850d1fb@alu.unizg.hr>
X-ClientProxiedBy: FR0P281CA0255.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:af::18) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|IA1PR12MB8224:EE_
X-MS-Office365-Filtering-Correlation-Id: c2f72d68-6d2c-4b66-359e-08dba24975c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xshn3j28xDuH0DkyFNeuPLBddYxR3MN+P944xt16h5Zd0AEgl3D8eHi57XW/hcr8bbtqzCpYAOxIgsw952Ik0Kc8hScN7OI6VtVK95k+Io9zO1kVDIvbK+mls5rDksp/rrpCRS1w3Lq0H86KRzot8vVos1Uknv78i6U0ReH1mqtQwJoVoj5QdiWC1Z+j3ei5OFDt0UrttNXLm2ZvbXcMJGOU91Tn23MMgWK93RCPuWtmmnM6jMB6ID/0NF6avzGo0QdRbKc6XZnFScVFt8/+tge9GQoRt4KaA1NFBV3hi9II1g+aJu0Avujc1veRe0oY2ykIi/UPeNLHtnlaeGnQoUdjSjJ+v4eZvAfHDOF/f4JPk7RrExHGL/QHA3qaDfSBzcBX89qazs8dCiVe5vpv2WbvM22D9bpoy/RBvn1A5Nw1SaHdFDntnLhBkg3luxCmS6puQaSHSVo0Vr4yffOrgn0qkeDaqCm4ZnbaTTJxsdMQMks4lsxEpepKKDbN815jvw05XMAiU+q9OJJVbwd6rCJSreNVt1dYEVNs5dx74ANrh0MRtBFTpDV2ajXCzdQ1StXlFfcK2XoeXq2171s+zAjsgjaO753nM6mvZ5zt0k+MV8Hkp0G+s9HzKWfEECo4tKnlpuKdYaP8Tdyjt+saIA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(376002)(39860400002)(366004)(396003)(1800799009)(186009)(451199024)(6666004)(6486002)(6506007)(38100700002)(6512007)(53546011)(31696002)(83380400001)(36756003)(26005)(2616005)(41300700001)(66556008)(316002)(2906002)(66946007)(54906003)(66476007)(86362001)(5660300002)(8676002)(478600001)(4326008)(8936002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?blNBOGdCOEtpNS9VRmJDdTg1Q2ZPZ2FUQWphRUJlN0VIeGI1Y3lYMnoyWWxG?=
 =?utf-8?B?TmJya0NvVGJtMlBqd1p6QzJkRlQ1M2V6UVVMbVNYQ3I3NENBODBsb29WbTZW?=
 =?utf-8?B?all1bUEzbEhveGQvVU1HbkN5NmVLT3NJMnNOUUsveTArZjBTZDF1QzRDb1hh?=
 =?utf-8?B?ck90S0hPS3RoZkE0RmVRMGpGZHVPamJBUFA3cDhvNEU4TnRtNlRmUkJtOEU1?=
 =?utf-8?B?RFZQZW00K2toWWdOOEdzM2RNMlcySmZGMXc5ZDFCUEtrT0FqeFVDb2NPV2pG?=
 =?utf-8?B?RytHZVlZZ1NZTkUxY05Ga0NsQmV4dm9WZ3htbi82SzBZN0lQVHFLamUvZVpX?=
 =?utf-8?B?eWZsM1BOMHN3VHUvbWpwZEd3cFVlbHpYbmRSZ0htVUNTclYzZW84NVhTWHlu?=
 =?utf-8?B?ZVV3KzhscG5TdVBlWXQ4dm0zVTg1TmFZTnRNN0RxOGRxU0dnTktxejZpNEl1?=
 =?utf-8?B?QnY1Q2FZakxrOXRaWUhyejhGWXJJOERyVXQySktudXFVa2t2OXYrKzBEeFJq?=
 =?utf-8?B?d2ZRUjdubjlSaW5ycFEwenZZV3JFUVhWclliYVJMbDdXWW9IZFE3cWFHQ2FS?=
 =?utf-8?B?M3M1VWhHK3N6cXhNY0RrQ1B3WG84T0lwb0VOV1dINGorQVhXR0FWVmtYREN3?=
 =?utf-8?B?Uk0yWktlaC8vUElIOEJiZHE5N0N0RGRIQmQzK3ZNOU1QL2ZHNm1NaFFVNTg1?=
 =?utf-8?B?MXZST3hwL1g0TER6L2c3dGZSYVljWDRSNjFiWFV1MC9nRFJZODdnTVBoK082?=
 =?utf-8?B?eWo3QXVQK21mcmg5OHVkTStocTdlNkE2V0pqQWlLbm42d1EzcFArT1pGSEJX?=
 =?utf-8?B?d01OVm5LZXIzcGsxcngrK2dmU2x5S0pTVEZBTmtWemRoN1crOEM3TGd0SFY0?=
 =?utf-8?B?UTY1TDVONFNwK0NJZEJkdTc1QVQ1Y3Z4eHdxdEdGMnFkalJuc3JXS0RzRUkr?=
 =?utf-8?B?U25TSUxCVHVsNW40MFFmTDQvOEozM29sWVQyNFBFektwTTJJNVRKVkl5bmtO?=
 =?utf-8?B?Ym5OMk1idWl4OTlpVjhxM3hSQmlHNFFHQ2Rka1Y5ZlV2OG5PakcxeDlEbjNk?=
 =?utf-8?B?emc2Z1Avamo2UHJkRGsxa0FzZWVKMS9vNSt2dFpQVEEvdkZjUlRPS0htcVUx?=
 =?utf-8?B?OFlQdWpCOFUzbmdoS0c5V0EzM2o3NUgxeUlEZURmNkQxQnBMQnJnamhITWxn?=
 =?utf-8?B?aXZhWTZoRitpbFVmSEM0TjloZm9oRTlpTC8xQU41Qk4yMmozc0M2MStXZTJV?=
 =?utf-8?B?ZmpLWW1EZ3RVUnJreHlGd3NJcytkODlqdXBobytFWnNuZ3lMczE4UzR6QWNS?=
 =?utf-8?B?QWFva1RXTDVXeFJrbkNqMEhoTXlqb1F3bFhRSmNhZSt4WDVDcy9ubUE1QVBM?=
 =?utf-8?B?ZlVtVTlwaTAyR2ZDSjQxT3IrUGZNM3FoVnE5cUcrYll1bEZQL0N4a1dPbnY2?=
 =?utf-8?B?Yy9Zc2tvOGdwVEtWbHZXWnkzbXBNVDllenNiaGVDUGcvdGk2akxKUlFVVTVD?=
 =?utf-8?B?MklidXh5bUgyWDZvdVZ0Sm0vQUJBYTI3aTN5dkRFcHJ5eDN6d1FINmU5TFVj?=
 =?utf-8?B?Q1lkMSs4ck0rT0VRMGJUVllTeDJmSCs2b1BidjVHOHB1VlB0Zll0d3Z4b1BD?=
 =?utf-8?B?V0d3clpzcUtobTNTSUg0SytwNE81dXZsZlBvbHZTbkZtMjNjQUlxd1F5cCtD?=
 =?utf-8?B?cEVhQ2dPcEVlV2hETVVVYVl2cXFFUzQ1TVdxUFErSDFxZVYrdWQyR3FGUm85?=
 =?utf-8?B?SVhBb0FEQ3p3VWJUUUd6bTB3Y3gvTWx0czRzM0o0aHZRUSt1MHh4Qlc5ZXRJ?=
 =?utf-8?B?bGRNVnpDd2xlZ2crNG1DYUNObWNxOWFhUDBkclVOUDQwUDhrNzJDK0VhRnlV?=
 =?utf-8?B?alowa0hpVXRRQjc5YS91MGFhWXIrTmgxRFFxeFV0Y3l5S2l3UkliV0pjNjdw?=
 =?utf-8?B?WFdzRDE1akpHbWRBM0R4TkVwVmlNczRia0p2emIrSnoxOFhreEluWDBKRzlL?=
 =?utf-8?B?M2VMTks2RUJLOFIwaE8wSzRyUWdTcnpSYXZPTHR3Z2x0eDU0eXE1R1ZuZ3hu?=
 =?utf-8?B?RnhmVEZoSEMxak1FZkxrRGlMdjJsOUNmY2RhRzJnNWdrMmtmTGJOeEJ4REdQ?=
 =?utf-8?Q?V3dFnCoMbUV3MqC5ICQJkZQ0M?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2f72d68-6d2c-4b66-359e-08dba24975c6
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 13:20:59.6703
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q9hvEbqiNkIIYSyiomY6Hemzhg/LM2eskO/iqEUyVh0sSQzyHNv38BSZ/yxZKs+S
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB8224
X-Rspamd-Queue-Id: 050D93EF33
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.64:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6JDH37EA6SKDMNWJIHQ3MH4OM4UG7HLT
X-Message-ID-Hash: 6JDH37EA6SKDMNWJIHQ3MH4OM4UG7HLT
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [BUG] KCSAN: data-race in drm_sched_entity_is_ready [gpu_sched] / drm_sched_entity_push_job [gpu_sched]
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6JDH37EA6SKDMNWJIHQ3MH4OM4UG7HLT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgTWlyc2FkLA0KDQp3ZWxsIHRoaXMgaXMgYSBmYWxzZSBwb3NpdGl2ZS4NCg0KVGhhdCBkcm1f
c2NoZWRfZW50aXR5X2lzX3JlYWR5KCkgZG9lc24ndCBzZWUgdGhlIGRhdGEgd3JpdHRlbiBieSAN
CmRybV9zY2hlZF9lbnRpdHlfcHVzaF9qb2IoKSBpcyBwYXJ0IG9mIHRoZSBsb2dpYyBoZXJlLg0K
DQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQpBbSAxOC4wOC4yMyB1bSAxNTo0NCBzY2hyaWViIE1p
cnNhZCBUb2Rvcm92YWM6DQo+IE9uIDgvMTcvMjMgMjE6NTQsIE1pcnNhZCBUb2Rvcm92YWMgd3Jv
dGU6DQo+PiBIaSwNCj4+DQo+PiBUaGlzIGlzIHlvdXIgZnJpZW5kbHkgYnVnIHJlcG9ydGVyLg0K
Pj4NCj4+IFRoZSBlbnZpcm9ubWVudCBpcyB2YW5pbGxhIHRvcnZhbGRzIHRyZWUga2VybmVsIG9u
IFVidW50dSAyMi4wNCBMVFMgDQo+PiBhbmQgYSBSeXplbiA3OTUwWCBib3guDQo+Pg0KPj4gUGxl
YXNlIGZpbmQgYXR0YWNoZWQgdGhlIGNvbXBsZXRlIGRtZXNnIG91dHB1dCBmcm9tIHRoZSByaW5n
IGJ1ZmZlciANCj4+IGFuZCBsc2h3IG91dHB1dC4NCj4+DQo+PiBOT1RFOiBUaGUga2VybmVsIHJl
cG9ydHMgdGFpbnRlZCBrZXJuZWwsIGJ1dCB0byBteSBrbm93bGVkZ2UgdGhlcmUgDQo+PiBhcmUg
bm8gcHJvcHJpZXRhcnkgKEcpIG1vZHVsZXMsDQo+PiDCoMKgwqDCoMKgwqAgYnV0IHRoaXMgdGFp
bnQgaXMgdHVybmVkIG9uIGJ5IHRoZSBwcmV2aW91cyBidWdzLg0KPj4NCj4+IGRtZXNnIGV4Y2Vy
cHQ6DQo+Pg0KPj4gWyA4NzkxLjg2NDU3Nl0gDQo+PiA9PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4+IFsgODc5MS44NjQ2
NDhdIEJVRzogS0NTQU46IGRhdGEtcmFjZSBpbiBkcm1fc2NoZWRfZW50aXR5X2lzX3JlYWR5IA0K
Pj4gW2dwdV9zY2hlZF0gLyBkcm1fc2NoZWRfZW50aXR5X3B1c2hfam9iIFtncHVfc2NoZWRdDQo+
Pg0KPj4gWyA4NzkxLjg2NDc3Nl0gd3JpdGUgKG1hcmtlZCkgdG8gMHhmZmZmOWI3NDQ5MWI3YzQw
IG9mIDggYnl0ZXMgYnkgDQo+PiB0YXNrIDM4MDcgb24gY3B1IDE4Og0KPj4gWyA4NzkxLjg2NDc4
OF3CoCBkcm1fc2NoZWRfZW50aXR5X3B1c2hfam9iKzB4ZjQvMHgyYTAgW2dwdV9zY2hlZF0NCj4+
IFsgODc5MS44NjQ4NTJdwqAgYW1kZ3B1X2NzX2lvY3RsKzB4Mzg4OC8weDNkZTAgW2FtZGdwdV0N
Cj4+IFsgODc5MS44Njg3MzFdwqAgZHJtX2lvY3RsX2tlcm5lbCsweDEyNy8weDIxMCBbZHJtXQ0K
Pj4gWyA4NzkxLjg2OTIyMl3CoCBkcm1faW9jdGwrMHgzOGYvMHg2ZjAgW2RybV0NCj4+IFsgODc5
MS44Njk3MTFdwqAgYW1kZ3B1X2RybV9pb2N0bCsweDdlLzB4ZTAgW2FtZGdwdV0NCj4+IFsgODc5
MS44NzM2NjBdwqAgX194NjRfc3lzX2lvY3RsKzB4ZDIvMHgxMjANCj4+IFsgODc5MS44NzM2NzZd
wqAgZG9fc3lzY2FsbF82NCsweDU4LzB4OTANCj4+IFsgODc5MS44NzM2ODhdwqAgZW50cnlfU1lT
Q0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NzMvMHhkZA0KPj4NCj4+IFsgODc5MS44NzM3MTBdIHJl
YWQgdG8gMHhmZmZmOWI3NDQ5MWI3YzQwIG9mIDggYnl0ZXMgYnkgdGFzayAxMTE5IG9uIA0KPj4g
Y3B1IDI3Og0KPj4gWyA4NzkxLjg3MzcyMl3CoCBkcm1fc2NoZWRfZW50aXR5X2lzX3JlYWR5KzB4
MTYvMHg1MCBbZ3B1X3NjaGVkXQ0KPj4gWyA4NzkxLjg3Mzc4Nl3CoCBkcm1fc2NoZWRfc2VsZWN0
X2VudGl0eSsweDFjNy8weDIyMCBbZ3B1X3NjaGVkXQ0KPj4gWyA4NzkxLjg3Mzg0OV3CoCBkcm1f
c2NoZWRfbWFpbisweGQyLzB4NTAwIFtncHVfc2NoZWRdDQo+PiBbIDg3OTEuODczOTEyXcKgIGt0
aHJlYWQrMHgxOGIvMHgxZDANCj4+IFsgODc5MS44NzM5MjRdwqAgcmV0X2Zyb21fZm9yaysweDQz
LzB4NzANCj4+IFsgODc5MS44NzM5MzldwqAgcmV0X2Zyb21fZm9ya19hc20rMHgxYi8weDMwDQo+
Pg0KPj4gWyA4NzkxLjg3Mzk1NV0gdmFsdWUgY2hhbmdlZDogMHgwMDAwMDAwMDAwMDAwMDAwIC0+
IDB4ZmZmZjliNzUwZWJjZmMwMA0KPj4NCj4+IFsgODc5MS44NzM5NzFdIFJlcG9ydGVkIGJ5IEtl
cm5lbCBDb25jdXJyZW5jeSBTYW5pdGl6ZXIgb246DQo+PiBbIDg3OTEuODczOTgwXSBDUFU6IDI3
IFBJRDogMTExOSBDb21tOiBnZnhfMC4wLjAgVGFpbnRlZDogDQo+PiBHwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIEzCoMKgwqDCoCA2LjUuMC1yYzYtbmV0LWNmZy1rY3Nhbi0wMDAzOC1nMTY5MzE4
NTlhNjUwICMzNQ0KPj4gWyA4NzkxLjg3Mzk5NF0gSGFyZHdhcmUgbmFtZTogQVNSb2NrIFg2NzBF
IFBHIExpZ2h0bmluZy9YNjcwRSBQRyANCj4+IExpZ2h0bmluZywgQklPUyAxLjIxIDA0LzI2LzIw
MjMNCj4+IFsgODc5MS44NzQwMDJdIA0KPj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+DQo+IFAuUy4NCj4NCj4gQWNj
b3JkaW5nIHRvIE1yLiBIZW8ncyBpbnN0cnVjdGlvbnMsIEkgYW0gYWRkaW5nIHRoZSB1bndvdW5k
IHRyYWNlIGhlcmU6DQo+DQo+IFsgMTg3OS43MDY1MThdIA0KPiA9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4gWyAxODc5
LjcwNjYxNl0gQlVHOiBLQ1NBTjogZGF0YS1yYWNlIGluIGRybV9zY2hlZF9lbnRpdHlfaXNfcmVh
ZHkgDQo+IFtncHVfc2NoZWRdIC8gZHJtX3NjaGVkX2VudGl0eV9wdXNoX2pvYiBbZ3B1X3NjaGVk
XQ0KPg0KPiBbIDE4NzkuNzA2NzM3XSB3cml0ZSAobWFya2VkKSB0byAweGZmZmY4ZjM2NzI3NDhj
NDAgb2YgOCBieXRlcyBieSB0YXNrIA0KPiA0MDg3IG9uIGNwdSAxMDoNCj4gWyAxODc5LjcwNjc0
OF0gZHJtX3NjaGVkX2VudGl0eV9wdXNoX2pvYiANCj4gKC4vaW5jbHVkZS9kcm0vc3BzY19xdWV1
ZS5oOjc0IA0KPiBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jOjU3NCkg
Z3B1X3NjaGVkDQo+IFsgMTg3OS43MDY4MDhdIGFtZGdwdV9jc19pb2N0bCANCj4gKGRyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jOjEzNzUgDQo+IGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9jcy5jOjE0NjkpIGFtZGdwdQ0KPiBbIDE4NzkuNzEwNTg5XSBkcm1f
aW9jdGxfa2VybmVsIChkcml2ZXJzL2dwdS9kcm0vZHJtX2lvY3RsLmM6Nzg4KSBkcm0NCj4gWyAx
ODc5LjcxMTA2OF0gZHJtX2lvY3RsIChkcml2ZXJzL2dwdS9kcm0vZHJtX2lvY3RsLmM6ODkyKSBk
cm0NCj4gWyAxODc5LjcxMTU1MV0gYW1kZ3B1X2RybV9pb2N0bCANCj4gKGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYzoyNzQ4KSBhbWRncHUNCj4gWyAxODc5LjcxNTMxOV0g
X194NjRfc3lzX2lvY3RsIChmcy9pb2N0bC5jOjUxIGZzL2lvY3RsLmM6ODcwIA0KPiBmcy9pb2N0
bC5jOjg1NiBmcy9pb2N0bC5jOjg1NikNCj4gWyAxODc5LjcxNTMzNF0gZG9fc3lzY2FsbF82NCAo
YXJjaC94ODYvZW50cnkvY29tbW9uLmM6NTAgDQo+IGFyY2gveDg2L2VudHJ5L2NvbW1vbi5jOjgw
KQ0KPiBbIDE4NzkuNzE1MzQ1XSBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUgDQo+IChh
cmNoL3g4Ni9lbnRyeS9lbnRyeV82NC5TOjEyMCkNCj4NCj4gWyAxODc5LjcxNTM2NV0gcmVhZCB0
byAweGZmZmY4ZjM2NzI3NDhjNDAgb2YgOCBieXRlcyBieSB0YXNrIDEwOTggb24gDQo+IGNwdSAx
MToNCj4gWyAxODc5LjcxNTM3Nl0gZHJtX3NjaGVkX2VudGl0eV9pc19yZWFkeSANCj4gKGRyaXZl
cnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmM6MTM0KSBncHVfc2NoZWQNCj4gWyAx
ODc5LjcxNTQzNV0gZHJtX3NjaGVkX3NlbGVjdF9lbnRpdHkgDQo+IChkcml2ZXJzL2dwdS9kcm0v
c2NoZWR1bGVyL3NjaGVkX21haW4uYzoyNDggDQo+IGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIv
c2NoZWRfbWFpbi5jOjg5MykgZ3B1X3NjaGVkDQo+IFsgMTg3OS43MTU0OTVdIGRybV9zY2hlZF9t
YWluIA0KPiAoZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmM6MTAxOSkgZ3B1
X3NjaGVkDQo+IFsgMTg3OS43MTU1NTRdIGt0aHJlYWQgKGtlcm5lbC9rdGhyZWFkLmM6Mzg5KQ0K
PiBbIDE4NzkuNzE1NTYzXSByZXRfZnJvbV9mb3JrIChhcmNoL3g4Ni9rZXJuZWwvcHJvY2Vzcy5j
OjE0NSkNCj4gWyAxODc5LjcxNTU3NV0gcmV0X2Zyb21fZm9ya19hc20gKGFyY2gveDg2L2VudHJ5
L2VudHJ5XzY0LlM6MzEyKQ0KPg0KPiBbIDE4NzkuNzE1NTkwXSB2YWx1ZSBjaGFuZ2VkOiAweDAw
MDAwMDAwMDAwMDAwMDAgLT4gMHhmZmZmOGYzNjA2NjNkYzAwDQo+DQo+IFsgMTg3OS43MTU2MDRd
IFJlcG9ydGVkIGJ5IEtlcm5lbCBDb25jdXJyZW5jeSBTYW5pdGl6ZXIgb246DQo+IFsgMTg3OS43
MTU2MTJdIENQVTogMTEgUElEOiAxMDk4IENvbW06IGdmeF8wLjAuMCBUYWludGVkOiANCj4gR8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBMwqDCoMKgwqAgNi41LjAtcmM2KyAjNDcNCj4gWyAxODc5
LjcxNTYyNF0gSGFyZHdhcmUgbmFtZTogQVNSb2NrIFg2NzBFIFBHIExpZ2h0bmluZy9YNjcwRSBQ
RyANCj4gTGlnaHRuaW5nLCBCSU9TIDEuMjEgMDQvMjYvMjAyMw0KPiBbIDE4NzkuNzE1NjMxXSAN
Cj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09DQo+DQo+IEl0IHNlZW1zIHRoYXQgdGhlIGxpbmUgaW4gcXVlc3Rpb24gbWln
aHQgYmU6DQo+DQo+IMKgwqDCoMKgZmlyc3QgPSBzcHNjX3F1ZXVlX3B1c2goJmVudGl0eS0+am9i
X3F1ZXVlLCAmc2NoZWRfam9iLT5xdWV1ZV9ub2RlKTsNCj4NCj4gd2hpY2ggZXhwYW5kcyB0bzoN
Cj4NCj4gc3RhdGljIGlubGluZSBib29sIHNwc2NfcXVldWVfcHVzaChzdHJ1Y3Qgc3BzY19xdWV1
ZSAqcXVldWUsIHN0cnVjdCANCj4gc3BzY19ub2RlICpub2RlKQ0KPiB7DQo+IMKgwqDCoMKgc3Ry
dWN0IHNwc2Nfbm9kZSAqKnRhaWw7DQo+DQo+IMKgwqDCoMKgbm9kZS0+bmV4dCA9IE5VTEw7DQo+
DQo+IMKgwqDCoMKgcHJlZW1wdF9kaXNhYmxlKCk7DQo+DQo+IMKgwqDCoMKgdGFpbCA9IChzdHJ1
Y3Qgc3BzY19ub2RlICoqKWF0b21pY19sb25nX3hjaGcoJnF1ZXVlLT50YWlsLCANCj4gKGxvbmcp
Jm5vZGUtPm5leHQpOw0KPiDCoMKgwqDCoFdSSVRFX09OQ0UoKnRhaWwsIG5vZGUpOw0KPiDCoMKg
wqDCoGF0b21pY19pbmMoJnF1ZXVlLT5qb2JfY291bnQpOw0KPg0KPiDCoMKgwqDCoC8qDQo+IMKg
wqDCoMKgICogSW4gY2FzZSBvZiBmaXJzdCBlbGVtZW50IHZlcmlmeSBuZXcgbm9kZSB3aWxsIGJl
IHZpc2libGUgdG8gdGhlIA0KPiBjb25zdW1lcg0KPiDCoMKgwqDCoCAqIHRocmVhZCB3aGVuIHdl
IHBpbmcgdGhlIGtlcm5lbCB0aHJlYWQgdGhhdCB0aGVyZSBpcyBuZXcgd29yayB0byANCj4gZG8u
DQo+IMKgwqDCoMKgICovDQo+IMKgwqDCoMKgc21wX3dtYigpOw0KPg0KPiDCoMKgwqDCoHByZWVt
cHRfZW5hYmxlKCk7DQo+DQo+IMKgwqDCoMKgcmV0dXJuIHRhaWwgPT0gJnF1ZXVlLT5oZWFkOw0K
PiB9DQo+DQo+IEFjY29yZGluZyB0byB0aGUgbWFudWFsLCBwcmVlbXB0X2Rpc2FibGUoKSBvbmx5
IGd1YXJhbnRlZWQgZXhjbHVzaW9uIA0KPiBvbiBhIHNpbmdsZSBDUFUvY29yZS90aHJlYWQsIHNv
DQo+IHdlIG1pZ2h0IGJlIHBsYWd1ZWQgd2l0aCB0aGUgc2xvdywgb2xkIGZhc2hpb25lZCBsb2Nr
aW5nIHVubGVzcyBhbnlvbmUgDQo+IGhhZCBhIGJldHRlciBpZGVhLg0KPg0KPiBCZXN0IHJlZ2Fy
ZHMsDQo+IE1pcnNhZCBUb2Rvcm92YWMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
