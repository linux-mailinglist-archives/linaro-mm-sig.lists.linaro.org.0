Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 755006B03A7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 11:04:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C0B53F0B4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 10:04:08 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2056.outbound.protection.outlook.com [40.107.93.56])
	by lists.linaro.org (Postfix) with ESMTPS id 03C603E920
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 10:03:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=HFsLbOna;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.56 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NT5Kj2rcwakiF+ocNm4x72JNFZrVMZ8xtATuRldKlRMfVzlq7lSDZTb4TeJY1hbnA0MR76Wn8qHxbnq7O39L48Uum7q5JEg8mO01iKHB0hw9huUdLX/GYqZWMqEqjnXeB/PkWfn9+YtQ3JK8uWRpq180AtUJdzFBZtPhA/bSeW5lgEykv2yE5z27RVwgr74tPNeGjK186yubHp+cl4BO0vgSKXtSjbUFPLUObdEi/DhPb08MM3fTyzuzYg/7g33Y8K2e3YR/1Q70/LXqW9rGUXNlLW0QbAc539fLJlg8S46UQdBV0Cg3y1vpXiSw6SzoDSUrsESCWyYoPSiPx41asQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FtGQQioFZY3WnVYG8MwM/oAfTmRdHiEFvZGhESpeido=;
 b=isLlGpYX+KZmCFn2yeK3hVNdhDj+ilho+VMuKnC5Ws+bHTMzkAW3ayfi0PE90lxii26AZJkIvz9A5GSGRgAykK/A1OvpWSqjoDpU6L2O5Dd5x4oOoBtrGy/UKWImRS1f5eHIxyg4pjKDZBpkJOvshPjzznDvbmlWTROGo0XhDE7a4bHC7VmKnnl3xzXyoUACLN83jPOWRVKmWPSO3JCVsDW5A8vAYZcPGE8tJ2ysqnWY2BhLATuP+ZhOjxaS1R9WNFzayxH6CxwE/yzOBadvIPeGbopzl4cQSytjK4lhF198elI6JGjB2H0VExbQ2Dp1PAY9A3FAol5xLq/pgfRzcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FtGQQioFZY3WnVYG8MwM/oAfTmRdHiEFvZGhESpeido=;
 b=HFsLbOnaTIaBUy28zW+seFiXcyYuGkzyE+/fCWiTi8FWuVA7/oZYYd4wp/ODu2QNZYZHFtXBXFSyN2vWJGGU42b/DoGR2MU5UHBAL2sKw8ZMg58HvuHP2D+g6qsRTIGfuKRAOuVnOrVJyRoTl3DI/WcOVTnQDsKPQEENVFKdEko=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CO6PR12MB5428.namprd12.prod.outlook.com (2603:10b6:5:35c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Wed, 8 Mar
 2023 10:03:43 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918%4]) with mapi id 15.20.6178.017; Wed, 8 Mar 2023
 10:03:43 +0000
Message-ID: <585fa052-4eff-940e-b307-2415c315686a@amd.com>
Date: Wed, 8 Mar 2023 11:03:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Asahi Lina <lina@asahilina.net>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>,
 Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>,
 Jarkko Sakkinen <jarkko@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-11-917ff5bc80a8@asahilina.net>
 <bbd7c5ee-c2f0-3e19-757d-a9aff1a26d3d@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <bbd7c5ee-c2f0-3e19-757d-a9aff1a26d3d@linux.intel.com>
X-ClientProxiedBy: FR0P281CA0148.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::9) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|CO6PR12MB5428:EE_
X-MS-Office365-Filtering-Correlation-Id: ae63679b-9ba6-4deb-425e-08db1fbc6620
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	XJc1G3LZMO8nOZ673xXspa1p6jg1at0s5UDnG1sf0cVsVqAEkid0Eq5ZY90tj0l1jZLvcoBAgsxOtLbatmCermB1vwPyZzAh2ZPYm2Xw+B4T60vYkBmHCuqdk/IiqT1MQWiH0KUlSuZSHWRWnaw3MjnCk8JYEugHra+h8xQlCUjstInPS1DoPb16HarED23hP24Hw1lkbTxnyjYGZX17Mftg9Yn6YPRDGnbRE1lL3ZPoXp5YqmkfTlDppV5VW9KX6COHUweSzgyBBK/2EoFzsTyA1TZ3/p/jlKXQUG6t4/mxFYf/bc6zW2u5M2j2FgkBCxU9Tx5xca1qDVixLIscnGWIRyUqN+ZDNoADNT6MmSTsUteHwgjOp4lxrR5s0EaFGRIW3Nxo347YHOOXAkAmn2gSd9rgdq+ieGYeLu9j0y6kDthDO25wDH6+o8J6DEJUhEHpgWj/Xs27ruUxWiMt6FgYhyelTf/F4aoj9zaiZeonbYfOvDwd/GoDTo2X6+pnzq8XG4S4gXFxD8IEp5iojq8h850EwDxbUWJRf283JBuNGUsp7k3kjuz1MC5u11QSo3eqzMMaTOvcYLbR1m6BeQDLTPkQFG12oVtpbYRp89PuKgPn4Azsr56NBegxwOvGDo7RQOnT5dDNR+xuFFf9LWVdvQzL6QYHnK5+Z0towUjZdVM97xjK1KwyvQNXXKVaPMO3l8+3zVJQChDl2QetBX18pswXxDVePAirAyoqr9XicBMqdIXQFLUgTG/n/w0P
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(136003)(39860400002)(396003)(376002)(346002)(451199018)(6666004)(110136005)(31696002)(54906003)(41300700001)(8676002)(86362001)(83380400001)(4326008)(36756003)(316002)(8936002)(66946007)(66476007)(478600001)(66556008)(7416002)(6486002)(5660300002)(186003)(921005)(2906002)(38100700002)(2616005)(31686004)(6512007)(53546011)(6506007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YlU2VlViYnZ5SWF2Zk1ZU0QyZFBndjEvbGNaTDJhOGU1VVNGUWZ0N2gzNU5M?=
 =?utf-8?B?dDhleHZRcC9GZm1hZlFnaVpFckllN250Z3VRYW9IRmljLzIrLzdJL3g5ckYz?=
 =?utf-8?B?V0NhNXh0d3RXQ2JSTVlza09XY1dOVGpuL1BHUmZCamFDa2J5YVptL0tSV05p?=
 =?utf-8?B?Ym8yYmd1cGhmY3o4RDRnSHlaZDRvTFhnRVZjUU1zVG1QNXJNd3V4dldxM0d2?=
 =?utf-8?B?RndNVnE5TWVCL0tDaE5EenF6dnh1ZHhqaFNMSW1WSkVXVFJDckdLVE4xTVpa?=
 =?utf-8?B?YW5xaDEybE8rT0FMeDJ0eFArb1BuVVdEYkFUUVpaSVpub09rM2kwdTVCc0g3?=
 =?utf-8?B?NDdqZ1hMZ1lkdGhsZzRFQlNXUlNRRmNkNW80dkFYYUo2NXBkUUE2Znl6ZkVS?=
 =?utf-8?B?Y1kwaUNhM3VqU1lyWjdzdUNqdlRIS3BlU1h2cGowMFRMUys2dWxxNEhlYUgr?=
 =?utf-8?B?VWdpNTVKbVpEOFN2STFUNExZNnZ1dzNzcmNoeHBXd1N1ODlhNnlpNklESGF4?=
 =?utf-8?B?VU92ZVRzaXZET1FwVUJOeWl4cmZIMFBkQ0hHSUNhQU9qK3NEbVJneFlyc1pF?=
 =?utf-8?B?YXZnUm1NamhrdU9yL0kwKzRDb1dVbUVnMGZESDFjNlVBQ1NJS3lRUW4zaUxY?=
 =?utf-8?B?aERkdE11RWpoTlNBQ0lZcGY3MFZIaHZPMmxlek1DV0IyQS9zN245SEJad2du?=
 =?utf-8?B?VzZ5d1lKWW1jZ0tuNHJLRWF4MHdmWUR2OENGU2ExTjl4ZDJjUG9FRDZwd0FO?=
 =?utf-8?B?ZmtiYXJGc2k1YUpCcEpnYTVzOVhxUlJxUmxnRXEyekRtRTJrdTdmaVczNGlX?=
 =?utf-8?B?bUtobkZlbEFMS2xCa1NRRTB5SXYyWlVuTE1vSGJpeXFXV1l6WExWSFRhRm80?=
 =?utf-8?B?d2h4SnNvVjNLQkt5SnViMXdxdEdyTXlkdCtjeWRQRGNuallPK2VmK2o4UW9F?=
 =?utf-8?B?dnN5UVZrYVVpVk1YTjVSV3BrVkFCVUxKNThPMlpucVdPV1BVRzh5bnFNZml5?=
 =?utf-8?B?azM2dm5SWSthdjh3bDR4T1JsTXZrREFKTU5SQk03eU5JcHI1VERnMW4wT2NO?=
 =?utf-8?B?RXpTQTRpeE5BVVZJc0dYQnkrQ3ZSNWlGOVI3ZXczMTU0a3E5WUJpQUVyT0Fq?=
 =?utf-8?B?Zmpzc3ZhRTVINEZlenp0ejhnK2t4ZURCY0xJTktSQlgwWUJQVUwxS3Q5QXJI?=
 =?utf-8?B?c20xVTJ4Yk4wL0JDVGQ2a0hjaXZQS2p0R24vODVVOGQxbmM3RU5MQkQ3VkhX?=
 =?utf-8?B?QzNaamJCcUFIbnYyeXgrYkd3aXhXNHhHcmR6NUdrS2thZmxCa2RnNGxWRmdO?=
 =?utf-8?B?UXZoTVpNWkh6RFNyUXVyYVpHMVUwU0dCNXRWZDhoU1orTmxja251Yzg0MWJL?=
 =?utf-8?B?NmRuaytPOVFhVDU4OTN0M1AxWGRuSnJubHFNMk1naW9oN3doNUlRR3JVaGcv?=
 =?utf-8?B?VWhNYTdPM2hYcTJ2NlNZa3NqUW1qYkRSbGgvRjhWeFR3VnIrS2tsc2Q0QTRt?=
 =?utf-8?B?a2ZtdXZKdTlrV2hIb3hkdjFKVVVpaWxDc1NCaGYzOWtTUGJsUDRhWEgxQ3Nt?=
 =?utf-8?B?bVhRSlhJdHR6MjF4bUFPMnlKWmp3eFlrU3g5M0tUZTh2b1VNcUNkKzNvOTE1?=
 =?utf-8?B?VlZ5RWVoK25RelcxRjB4ZDFEVDlrY2daN2pTcXR6OEdSaXZMVEIrSm1NZjZD?=
 =?utf-8?B?WGd5VzcrdW51SDVIWTczUlBmM1pFUTYzeGg0djlSbWxXUGQrcWtqeTYvQVFn?=
 =?utf-8?B?UmUzT3hJRE5acU5LaXU2ajNUdTNlamQ4M0pBS0orcjkvVDgzSnhtNFlhVXZs?=
 =?utf-8?B?RTJwdTY0WFZNSHFwd1lDM2pmeHNBUWE1Zi9aL2FSZzRuNlQybVhaK3VWdzVK?=
 =?utf-8?B?djgrTHhOWXhqSjhpQzNaaG9pZ1ljU0IxV1RkaURxL3dyNmo1YjIzS2Y5dWdM?=
 =?utf-8?B?SE05YldhdGZjU0hhU01xcTVkOUVCd2VKZFZoQnlTK2h4UzdyVDBGc25iWkdu?=
 =?utf-8?B?Y3M5UjJkQXl5ZFNhSXpub21qaVNLbjduMC9VcmR1RzFiLzlzL25FclpxSXB2?=
 =?utf-8?B?WExZUjlvK2FNdVJ3NGk4UFZjcmF5MHV3dkRBdEtrdDdNTzVDNHZMQXI1UTd4?=
 =?utf-8?B?TUhXNllDb1RCSCtscjRuSnVJVUtXVXJBUzQyVVpDaG9SNTVMdjBTU1ZzNFg3?=
 =?utf-8?Q?mk9RBqtfTLcv+PJl3LnYPqL1zWMSt4HpbfvCLLbJID7l?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae63679b-9ba6-4deb-425e-08db1fbc6620
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 10:03:43.3416
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KbG/BPxCVsUuU+KCrLKjYUjqpvXH1ocAgT9JtQosCvJtf0z3vsgpB3QjJZwVk2NI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR12MB5428
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 03C603E920
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,asahilina.net,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.56:from]
Message-ID-Hash: 3D2KOWHTQCWEJCSDUBR4S6RP6C37533K
X-Message-ID-Hash: 3D2KOWHTQCWEJCSDUBR4S6RP6C37533K
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 11/18] drm/scheduler: Clean up jobs when the scheduler is torn down
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3D2KOWHTQCWEJCSDUBR4S6RP6C37533K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDguMDMuMjMgdW0gMTA6NTcgc2NocmllYiBNYWFydGVuIExhbmtob3JzdDoNCj4NCj4gT24g
MjAyMy0wMy0wNyAxNToyNSwgQXNhaGkgTGluYSB3cm90ZToNCj4+IGRybV9zY2hlZF9maW5pKCkg
Y3VycmVudGx5IGxlYXZlcyBhbnkgcGVuZGluZyBqb2JzIGRhbmdsaW5nLCB3aGljaA0KPj4gY2F1
c2VzIHNlZ2ZhdWx0cyBhbmQgb3RoZXIgYmFkbmVzcyB3aGVuIGpvYiBjb21wbGV0aW9uIGZlbmNl
cyBhcmUNCj4+IHNpZ25hbGVkIGFmdGVyIHRoZSBzY2hlZHVsZXIgaXMgdG9ybiBkb3duLg0KPj4N
Cj4+IEV4cGxpY2l0bHkgZGV0YWNoIGFsbCBqb2JzIGZyb20gdGhlaXIgY29tcGxldGlvbiBjYWxs
YmFja3MgYW5kIGZyZWUNCj4+IHRoZW0uIFRoaXMgbWFrZXMgaXQgcG9zc2libGUgdG8gd3JpdGUg
YSBzZW5zaWJsZSBzYWZlIGFic3RyYWN0aW9uIGZvcg0KPj4gZHJtX3NjaGVkLCB3aXRob3V0IGhh
dmluZyB0byBleHRlcm5hbGx5IGR1cGxpY2F0ZSB0aGUgdHJhY2tpbmcgb2YNCj4+IGluLWZsaWdo
dCBqb2JzLg0KPj4NCj4+IFRoaXMgc2hvdWxkbid0IHJlZ3Jlc3MgYW55IGV4aXN0aW5nIGRyaXZl
cnMsIHNpbmNlIGNhbGxpbmcNCj4+IGRybV9zY2hlZF9maW5pKCkgd2l0aCBhbnkgcGVuZGluZyBq
b2JzIGlzIGJyb2tlbiBhbmQgdGhpcyBjaGFuZ2Ugc2hvdWxkDQo+PiBiZSBhIG5vLW9wIGlmIHRo
ZXJlIGFyZSBubyBwZW5kaW5nIGpvYnMuDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogQXNhaGkgTGlu
YSA8bGluYUBhc2FoaWxpbmEubmV0Pg0KPj4gLS0tDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX21haW4uYyB8IDI3IA0KPj4gKysrKysrKysrKysrKysrKysrKysrKysrKy0t
DQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkN
Cj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWlu
LmMgDQo+PiBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+PiBpbmRl
eCA1YzBhZGQyYzc1NDYuLjBhYWIxZTBhZWJkZCAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX21haW4uYw0KPj4gQEAgLTExMTksMTAgKzExMTksMzMgQEAgRVhQT1JUX1NZ
TUJPTChkcm1fc2NoZWRfaW5pdCk7DQo+PiDCoCB2b2lkIGRybV9zY2hlZF9maW5pKHN0cnVjdCBk
cm1fZ3B1X3NjaGVkdWxlciAqc2NoZWQpDQo+PiDCoCB7DQo+PiDCoMKgwqDCoMKgIHN0cnVjdCBk
cm1fc2NoZWRfZW50aXR5ICpzX2VudGl0eTsNCj4+ICvCoMKgwqAgc3RydWN0IGRybV9zY2hlZF9q
b2IgKnNfam9iLCAqdG1wOw0KPj4gwqDCoMKgwqDCoCBpbnQgaTsNCj4+IMKgIC3CoMKgwqAgaWYg
KHNjaGVkLT50aHJlYWQpDQo+PiAtwqDCoMKgwqDCoMKgwqAga3RocmVhZF9zdG9wKHNjaGVkLT50
aHJlYWQpOw0KPj4gK8KgwqDCoCBpZiAoIXNjaGVkLT50aHJlYWQpDQo+PiArwqDCoMKgwqDCoMKg
wqAgcmV0dXJuOw0KPj4gKw0KPj4gK8KgwqDCoCAvKg0KPj4gK8KgwqDCoMKgICogU3RvcCB0aGUg
c2NoZWR1bGVyLCBkZXRhY2hpbmcgYWxsIGpvYnMgZnJvbSB0aGVpciBoYXJkd2FyZSANCj4+IGNh
bGxiYWNrcw0KPj4gK8KgwqDCoMKgICogYW5kIGNsZWFuaW5nIHVwIGNvbXBsZXRlIGpvYnMuDQo+
PiArwqDCoMKgwqAgKi8NCj4+ICvCoMKgwqAgZHJtX3NjaGVkX3N0b3Aoc2NoZWQsIE5VTEwpOw0K
Pj4gKw0KPj4gK8KgwqDCoCAvKg0KPj4gK8KgwqDCoMKgICogSXRlcmF0ZSB0aHJvdWdoIHRoZSBw
ZW5kaW5nIGpvYiBsaXN0IGFuZCBmcmVlIGFsbCBqb2JzLg0KPj4gK8KgwqDCoMKgICogVGhpcyBh
c3N1bWVzIHRoZSBkcml2ZXIgaGFzIGVpdGhlciBndWFyYW50ZWVkIGpvYnMgYXJlIA0KPj4gYWxy
ZWFkeSBzdG9wcGVkLCBvciB0aGF0DQo+PiArwqDCoMKgwqAgKiBvdGhlcndpc2UgaXQgaXMgcmVz
cG9uc2libGUgZm9yIGtlZXBpbmcgYW55IG5lY2Vzc2FyeSBkYXRhIA0KPj4gc3RydWN0dXJlcyBm
b3INCj4+ICvCoMKgwqDCoCAqIGluLXByb2dyZXNzIGpvYnMgYWxpdmUgZXZlbiB3aGVuIHRoZSBm
cmVlX2pvYigpIGNhbGxiYWNrIGlzIA0KPj4gY2FsbGVkIGVhcmx5IChlLmcuIGJ5DQo+PiArwqDC
oMKgwqAgKiBwdXR0aW5nIHRoZW0gaW4gaXRzIG93biBxdWV1ZSBvciBkb2luZyBpdHMgb3duIHJl
ZmNvdW50aW5nKS4NCj4+ICvCoMKgwqDCoCAqLw0KPj4gK8KgwqDCoCBsaXN0X2Zvcl9lYWNoX2Vu
dHJ5X3NhZmUoc19qb2IsIHRtcCwgJnNjaGVkLT5wZW5kaW5nX2xpc3QsIGxpc3QpIHsNCj4+ICvC
oMKgwqDCoMKgwqDCoCBzcGluX2xvY2soJnNjaGVkLT5qb2JfbGlzdF9sb2NrKTsNCj4+ICvCoMKg
wqDCoMKgwqDCoCBsaXN0X2RlbF9pbml0KCZzX2pvYi0+bGlzdCk7DQo+PiArwqDCoMKgwqDCoMKg
wqAgc3Bpbl91bmxvY2soJnNjaGVkLT5qb2JfbGlzdF9sb2NrKTsNCj4+ICvCoMKgwqDCoMKgwqDC
oCBzY2hlZC0+b3BzLT5mcmVlX2pvYihzX2pvYik7DQo+PiArwqDCoMKgIH0NCj4NCj4gSSB3b3Vs
ZCBzdG9wIHRoZSBrdGhyZWFkIGZpcnN0LCB0aGVuIGRlbGV0ZSBhbGwgam9icyB3aXRob3V0IHNw
aW5sb2NrIA0KPiBzaW5jZSBub3RoaW5nIGVsc2UgY2FuIHJhY2UgYWdhaW5zdCBzY2hlZF9maW5p
Pw0KPg0KPiBJZiB5b3UgZG8gbmVlZCB0aGUgc3BpbmxvY2ssIEl0IHdvdWxkIG5lZWQgdG8gZ3Vh
cmQgDQo+IGxpc3RfZm9yX2VhY2hfZW50cnkgdG9vLg0KDQpXZWxsIHRoaXMgY2FzZSBoZXJlIGFj
dHVhbGx5IHNob3VsZCBub3QgaGFwcGVuIGluIHRoZSBmaXJzdCBwbGFjZS4NCg0KSm9icyBkZXBl
bmQgb24gdGhlaXIgZGV2aWNlLCBzbyBhcyBsb25nIGFzIHRoZXJlIGFyZSBqb2JzIHRoZXJlIHNo
b3VsZCANCmFsc28gYmUgYSByZWZlcmVuY2UgdG8gdGhlIHNjaGVkdWxlci4NCg0KV2hhdCBjb3Vs
ZCBiZSBpcyB0aGF0IHlvdSBoYXZlIGFsbG9jYXRlZCBhIHNjaGVkdWxlciBpbnN0YW5jZSANCmR5
bmFtaWNhbGx5LCBidXQgZXZlbiB0aGVuIHlvdSBzaG91bGQgZmlyc3QgdGVhciBkb3duIGFsbCBl
bnRpdGllcyBhbmQgDQp0aGVuIHRoZSBzY2hlZHVsZXIuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4u
DQoNCj4NCj4+ICsNCj4+ICvCoMKgwqAga3RocmVhZF9zdG9wKHNjaGVkLT50aHJlYWQpOw0KPj4g
wqAgwqDCoMKgwqDCoCBmb3IgKGkgPSBEUk1fU0NIRURfUFJJT1JJVFlfQ09VTlQgLSAxOyBpID49
IA0KPj4gRFJNX1NDSEVEX1BSSU9SSVRZX01JTjsgaS0tKSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RydWN0IGRybV9zY2hlZF9ycSAqcnEgPSAmc2NoZWQtPnNjaGVkX3JxW2ldOw0KPj4NCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
