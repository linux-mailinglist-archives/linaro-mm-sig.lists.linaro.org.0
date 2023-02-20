Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A39569C6BC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 09:32:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B3813F31A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 08:32:13 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2084.outbound.protection.outlook.com [40.107.223.84])
	by lists.linaro.org (Postfix) with ESMTPS id 867913EBC1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 08:31:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=1a9O3jb5;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.223.84 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mjSea0ZdpYyyNKbzN9vZCt7EKknmDRxhbtaDVsAwjYs3MZsDlBaXhSBKB5caoNqIJ2c55MjounwO31I5+qNatpNzNaIX1mTZZCoDi1hEjfygAcQ+QDduqZbhFI7wcSrOkx1KsmrpZzlrFS0l0RhybGLrGX9qvS/nhwBFylLp80qR+pvotQ3ZpwjlvcdNUUyhRtvb+QffR+o+xLt7JyqREaDGE3P0XDWqsTa7WMvMNV1XxWYIl6M20HUM8Nz2gH6g+EGAqTTHlokeoBfC/mS4M9yLlO185lLrDhclX+vMyoZrOejYNbECkM5mpgqTVdXQRx2SjNqypfRKzZs97A8/VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WP0+Tkv9NGhtx0IEyCcGMR4X8Ht2S+jUKE+V1JWfaHw=;
 b=Li7j5WoiWzRrvO69FBmpHTUOfbatAHPcD7rp3XxQJzSITrPAXnG9IM70NTB4bWnFy9aCuNq4K9kqXnatwKKyMpqvrct1XBCSTZUlIK/CQ28wb+jfGUDKJ6IRLPykEASSuwWbkd2LEyhj0oaquucoeMm74h3FP8k13xv9xH4GvXrIwlionTjykkyCiICCNz0mMyoYX/XKim+uo2h5yBH2nH0DkAaKsHV1XL82F2hpiVkTC99xznTjwbp/b6m1dtbT2EWn2a9a0y22H8+e9A+5OS+WtV69gavWNu71GcK/oRENYVr1fTSzMSzrYnmhjr8BYdE6Z155Cju0XLJ4sANHgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WP0+Tkv9NGhtx0IEyCcGMR4X8Ht2S+jUKE+V1JWfaHw=;
 b=1a9O3jb5OdM0ZiZXQs9KHDdFFP0t+nCEyCM5ZGN1cpLU1hMugD7ifXPwvmWjxPEURYdSfJPuWiWyMwsnG/sdc51PoDOM5kUu5ovDpv26f2/Pnr3TM4GpMx83Y+CQJoJ77dv90+qukMmZ0biehTA8ETDLqJj5N3zZwgjCxxlyXBg=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CY8PR12MB7337.namprd12.prod.outlook.com (2603:10b6:930:53::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.19; Mon, 20 Feb
 2023 08:31:49 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::2e4f:4041:28be:ba7a]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::2e4f:4041:28be:ba7a%6]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 08:31:49 +0000
Message-ID: <2e6e9581-6de8-6aca-3e73-946fbc6ad2a3@amd.com>
Date: Mon, 20 Feb 2023 09:31:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230218211608.1630586-1-robdclark@gmail.com>
 <20230218211608.1630586-7-robdclark@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20230218211608.1630586-7-robdclark@gmail.com>
X-ClientProxiedBy: FR3P281CA0116.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a3::20) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|CY8PR12MB7337:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ec53a06-eb0c-4cc4-f7e0-08db131ce909
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	uyIEtX2RkHaTMZPi8wXouIHPteFoWCB9bDpeQggiR9sOPk9D8pJ3QN8iDyo0Q5m2S0S895qDl1Pd32qhghzfCJiy5o1ZafqRInoEMjq73P0kfyXUj8YmMF/N5LTGH6rXHqMcdJlRKGgm/7pFjXtOIdyF7rmuWF6vUrfiXkOz/VwLqI+6am9Ta+yDC1SeQtUeYfqyPYqfHol4jk88M676YmF2N5Ui6smRkNLrUsmq3xMMwNoCO7SM4xVPUe+ic7aYO3+o4gAz73DM1yzdBSHyPTe7kBh19bfWYZN3T1eMx9NTdJ899DL1FM1WspyCWHQoyvix88kgOmnoTUU2PR9/YsOXt6HAEFNbLjMLti8WiA39OVGBdGipazTMJrCUMo9YtvyaGY4eQCkdRPdRP14KQPLzUWC5OGVFoEkZeOJOhkGDlJK77qXO33nrkB0VAEpIUlaZVEZd/6UBDDssp+CP08U66u+AfQz/6Utwmq77igzDZMIgyQpQ5KJJrhh8RcYDt2u8Q4ptWkcYG297MZKaiudVonbGAwt9LuXg80pzaoME7I9QFZFYZIyTr1DtgVd+oEgjDg3q3DrRBTdwvj1FjKOX6mUQ8i565zJ/fHhxzoNagYFy/FjWI4XNz4RFvJoAkNxouJlsx+qISvSTukyZFeqnotT04LlrXhYpaCSMgKDbEGzZjhrWxhrAsIbLjLrrBA5cFOVjy1lO4B7XwukeofavJ9URBOSNiD6hgPa9gu8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(396003)(366004)(136003)(376002)(346002)(451199018)(54906003)(478600001)(31696002)(38100700002)(86362001)(2906002)(316002)(41300700001)(36756003)(5660300002)(7416002)(8936002)(66476007)(8676002)(66556008)(4326008)(66946007)(83380400001)(2616005)(186003)(31686004)(6512007)(6486002)(6666004)(6506007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QnZlWUxrZE5DNzFjVWtBeHBnZE1FUXh4NURFTjdTbHplSUN5NDA1cXFQU3VU?=
 =?utf-8?B?Q1pmeW9JNUFaTlFHVWV2UnhiZHJDSEUzVEEvRUFWK2xsbmhRU1owMnFMRm9E?=
 =?utf-8?B?NkRPUEEvMFVEckxqMFV4WnZhNURLSXJOY2RWR2tpZ0dvUVRkZUgzclBzYm5Z?=
 =?utf-8?B?cml6Q0UvT043cUhuVmlGYWx0SjdFQ3lQWWlQT3EzVWpSK3laSWp4QWZPaEVQ?=
 =?utf-8?B?a3JVWHowTFRrcmVPdnRoMmlxc09oeEREL09PaWZPeDk0NkJVbG9tY3RKQ2VN?=
 =?utf-8?B?Mnd6dkU3OUNaMzVaTEc3V2ZMQ04zYXJ6ZURLSUtIWFc4b05Ed3lpNnFYbVpZ?=
 =?utf-8?B?aE9pUlUya0x5eVpmWGNCNWpyWXhKYysxeVIzVnczMllHYnN2ZjBtbXcxdk1W?=
 =?utf-8?B?TWFhQkhPV3J2bWRJYTJzbXNLM0ptclVIK2VlcDJKYjRFR0hSUEpxTVRWT05G?=
 =?utf-8?B?akNXcUs5aWN0aSs0Y2pCcGFTdE41R2FVN1JNUkthV09qVExhK3JZQnJWMlZT?=
 =?utf-8?B?ZWltcWhhRUxiNGNucGRydmY1aWpqS1VjZll3ZHhVdnRMSlVXcmhuZUFqaHFN?=
 =?utf-8?B?R2pBLzNLKzBtWllTOHBDRG5pTTRXUXk0bXk2THNyemJZaGM4bkJGcW05KzBM?=
 =?utf-8?B?N2twcm8xM2c3cWsxZ0VJMTN6V2RzZ25EdTl6UmZNWi8wamFlQkRQOG9zdkJB?=
 =?utf-8?B?aUtTM1pHZU9HM1pWLzd4OElPaVIybnpUZzRSTHAvNWFwMjNLRHJ6RUhiQlhp?=
 =?utf-8?B?NjhuMEgwMjNqdGNRU1U1b1M5VmVyZlcxUnFVVXF5U2xxVC8yVjJVK2xwY0Ju?=
 =?utf-8?B?SHRtajFkVW9sUTZ4Z1pTWStnYTY2S2l3clk2WmRxYVE0cDQ5SmF3OHBYQ0N4?=
 =?utf-8?B?K0pIb3d3alhBN2VNVmtiTitubWZlRHhYZm5VUkJlMTZKZ1gzY3RENlcza0dz?=
 =?utf-8?B?THdyV1ZnTkJ3UFRZSTI2WGtwZm1hZ01jS3E1bzZXL2lWQzkybWtXa1MyKzAy?=
 =?utf-8?B?bVZYTEVxS1JRNHZFa1lZS2FlWk5wR0VlYzlFQ0ZERFVjV3ptcXNlTTMzaUpC?=
 =?utf-8?B?SU5rMEVFTStIaU1mSTVFWUhLU1l2ZFV4T1dqeDBRYnk0N1VOSFZ4OERnREto?=
 =?utf-8?B?SXlsdVJVa2hEdXdTZFRIKzNBTWgxWGV4a0J6a2NHRG5PYlZEbUIrMEhXQmhs?=
 =?utf-8?B?VEkvU2hac2lpNEQrMzdnTUFYeGMwVmlYWmtVWFhhOUthVXVzYmNDbWY1NlUr?=
 =?utf-8?B?ZStnOVN5akJCVWlnWDNmYUErUDhXTUtXRUlOY3NoKzNoS3dud2RyZkJybTFw?=
 =?utf-8?B?bitGSGRyTGFPWldDT2R4ZnJaaTF6RlM3UlJaaVM2aVVKS0RtZTZ1bjZScHRV?=
 =?utf-8?B?YlhoQk5WM0lia0M0RmFhbVRFMEY4c3piV3RRZmNqSlB4YW5iK1lEVE5ieTNq?=
 =?utf-8?B?TUNER3R5TmZTQ0JaakhPTXg4enByblRRK1czNVlLSzUxQzBvYUhQcDBXcnM0?=
 =?utf-8?B?SlRqMmFuWHpDUStOK2VFUk5xc3ZzMEpVOFdDYXcxbjZXQWhUbVF6WWZGcjRk?=
 =?utf-8?B?ZE5ROE1UUzQ0Y09yQTlaeWpzQ2RUdk5TZDZydFlZMnRvR0RSdzU4WmhxTHlB?=
 =?utf-8?B?Z3VxbzhFLzNveXR2Z0VCK1pSMktseHMvZk1HL3lFN0Fuak5SMyszdkxpMjA0?=
 =?utf-8?B?djVsTC9qSjdBNmRVZVUydTZET29uTVRiN1Fyekl4V00xeUhacXkzWmJteFFw?=
 =?utf-8?B?VG1vakkxb2NxMSsyVS9yeXRlTWRsemxXTVUwdmw4MUZOMGV0eEVMQk9rUWFG?=
 =?utf-8?B?WG5mL1dzZmNlaGhnRnphcXl1OVVla0VXRVN6dkt1QTZ5elMyWGZUazl0bmly?=
 =?utf-8?B?cEdwcFBNS2dsWVorNHNWeUpFUmNFSVdlWS9rd3NGV3A2WnVLTzZnWldJVDlV?=
 =?utf-8?B?TzdSbXA3aVFFcUV0QTNUTG16ZXBWcFZ1TENsYWJNR2RTbkUxbXVWUExsdTFZ?=
 =?utf-8?B?YjBYbnZuYWhwbE5wMEdIMTJvVG9IK3U4RElaS1hGL2Y1eTIvUzBtWXJpTWpn?=
 =?utf-8?B?czlTTWcyK2psMU55c0JOQVV4b0s3eEFPTnRub0E3SDk0azUwMk93Q2lRSUNE?=
 =?utf-8?B?bHhBa2RYZ2pxdG1QYjRNbFFUUVM2d3o3T1pob3dLMTNPMEViQSsvSmFNa2pY?=
 =?utf-8?Q?1VrgrfHBSeAMmCdwzFLh+2MiK872JC3qwTFxxhBV/aJs?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ec53a06-eb0c-4cc4-f7e0-08db131ce909
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 08:31:49.5313
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ND2dKftjyXP6kHjAqttZPEPuWtvgymWMqDIuJq6VvYXERq37h1l5Taeq6XKybJly
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7337
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 867913EBC1
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.84:from];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: DYWLITULUFHCEGSUF4CVLHGH7GNKAFTS
X-Message-ID-Hash: DYWLITULUFHCEGSUF4CVLHGH7GNKAFTS
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DYWLITULUFHCEGSUF4CVLHGH7GNKAFTS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTguMDIuMjMgdW0gMjI6MTUgc2NocmllYiBSb2IgQ2xhcms6DQo+IEZyb206IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4NCj4gQWxsb3cgdXNlcnNwYWNlIHRvIHVzZSB0
aGUgRVBPTExQUkkvUE9MTFBSSSBmbGFnIHRvIGluZGljYXRlIGFuIHVyZ2VudA0KPiB3YWl0IChh
cyBvcHBvc2VkIHRvIGEgImhvdXNla2VlcGluZyIgd2FpdCB0byBrbm93IHdoZW4gdG8gY2xlYW51
cCBhZnRlcg0KPiBzb21lIHdvcmsgaGFzIGNvbXBsZXRlZCkuICBVc2VybW9kZSBjb21wb25lbnRz
IG9mIEdQVSBkcml2ZXIgc3RhY2tzDQo+IG9mdGVuIHBvbGwoKSBvbiBmZW5jZSBmZCdzIHRvIGtu
b3cgd2hlbiBpdCBpcyBzYWZlIHRvIGRvIHRoaW5ncyBsaWtlDQo+IGZyZWUgb3IgcmV1c2UgYSBi
dWZmZXIsIGJ1dCB0aGV5IGNhbiBhbHNvIHBvbGwoKSBvbiBhIGZlbmNlIGZkIHdoZW4NCj4gd2Fp
dGluZyB0byByZWFkIGJhY2sgcmVzdWx0cyBmcm9tIHRoZSBHUFUuICBUaGUgRVBPTExQUkkvUE9M
TFBSSSBmbGFnDQo+IGxldHMgdGhlIGtlcm5lbCBkaWZmZXJlbnRpYXRlIHRoZXNlIHR3byBjYXNl
cy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3Jn
Pg0KDQpUaGUgY29kZSBsb29rcyBjbGVhbiwgYnV0IHRoZSBkaWZmZXJlbnQgcG9sbCBmbGFncyBh
bmQgdGhlaXIgbWVhbmluZyBhcmUgDQpjZXJ0YWlubHkgbm90IG15IGZpZWxkIG9mIGV4cGVydGlz
ZS4NCg0KRmVlbCBmcmVlIHRvIGFkZCBBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiwgDQpzb21lYm9keSB3aXRoIG1vcmUgYmFja2dyb3VuZCBpbiB0
aGlzIHNob3VsZCBwcm9iYWJseSB0YWtlIGEgbG9vayBhcyB3ZWxsLg0KDQpSZWdhcmRzLA0KQ2hy
aXN0aWFuLg0KDQo+IC0tLQ0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYyB8IDggKysr
KysrKysNCj4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMgYi9kcml2ZXJzL2RtYS1idWYvc3luY19m
aWxlLmMNCj4gaW5kZXggZmI2Y2ExMDMyODg1Li5jMzBiMjA4NWVlMGEgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvc3lu
Y19maWxlLmMNCj4gQEAgLTE5Miw2ICsxOTIsMTQgQEAgc3RhdGljIF9fcG9sbF90IHN5bmNfZmls
ZV9wb2xsKHN0cnVjdCBmaWxlICpmaWxlLCBwb2xsX3RhYmxlICp3YWl0KQ0KPiAgIHsNCj4gICAJ
c3RydWN0IHN5bmNfZmlsZSAqc3luY19maWxlID0gZmlsZS0+cHJpdmF0ZV9kYXRhOw0KPiAgIA0K
PiArCS8qDQo+ICsJICogVGhlIFBPTExQUkkvRVBPTExQUkkgZmxhZyBjYW4gYmUgdXNlZCB0byBz
aWduYWwgdGhhdA0KPiArCSAqIHVzZXJzcGFjZSB3YW50cyB0aGUgZmVuY2UgdG8gc2lnbmFsIEFT
QVAsIGV4cHJlc3MgdGhpcw0KPiArCSAqIGFzIGFuIGltbWVkaWF0ZSBkZWFkbGluZS4NCj4gKwkg
Ki8NCj4gKwlpZiAocG9sbF9yZXF1ZXN0ZWRfZXZlbnRzKHdhaXQpICYgRVBPTExQUkkpDQo+ICsJ
CWRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3luY19maWxlLT5mZW5jZSwga3RpbWVfZ2V0KCkpOw0K
PiArDQo+ICAgCXBvbGxfd2FpdChmaWxlLCAmc3luY19maWxlLT53cSwgd2FpdCk7DQo+ICAgDQo+
ICAgCWlmIChsaXN0X2VtcHR5KCZzeW5jX2ZpbGUtPmNiLm5vZGUpICYmDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
