Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C81D6B12BF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 21:15:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C6953F0BC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 20:15:05 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2075.outbound.protection.outlook.com [40.107.243.75])
	by lists.linaro.org (Postfix) with ESMTPS id 65A943EF9C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 20:14:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=rIfnn+Bd;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.75 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=esIjJmtQdYpCPE44oWJkw7qZmfzzO3CAB4I7oR7x3XTsO7iT7BF+AogpkcwHDUzmlR8iJmH7BwYvnXUYKMkN8LqfjvCE2ctJNIgERM/eH0U7m+5sjwY3NUAlemcN4XM5JqdMT1nHigMvDqG0rgiIXJZZe+6lmRu0BE0HeTcT1UyjB4FqEVpx2re6FBRY3255lum8Cy/G2z0mW2DjmPoneyAUUaZhgp/i/7p0IeIMQLGJ0kZ6BO85Ua6HGxCtPz235yo/kOT/bl7AuOld9OQzIFGOfiqO9WcLt8x7YQPLzIdHa2NpmI9CVOnK6FLddcd5rCyiqjknSucg1E+eL+oVVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lpA7O7fIP3RA1upVpzgmgS6JZclbBj33qtdxmgRvRUI=;
 b=IQ8QOU405ek5UelhvCa/6G/wrUfRSK+3g8duz4i6PyjxUKGKw6VWHYLMvYVeUYhkBykQ70O+EYP8JCcV6Vh/deFmlhfK4nxUcx+hM8hRnuUCx/Z2/A7bu7DXSImcOiGAcQwdkT37mGyAoWxHPKssQ7Mpawa9bozkvBS5XzBWtvi43z6uW+Px24TkG8L05HnHRhrHT5iwAacxjzA5rr/t0PobBEv8XzDWUQ0mx1BByM3I417BJnYaSYl80f0L8fW6pBHeaftj+81IF2qQftFfpIiTeaBJc8VrgT1JWVDsMbXUJ6dFqXbP9flNkiWcqmCqCSXknryL4EHSWmMBw+Lfmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lpA7O7fIP3RA1upVpzgmgS6JZclbBj33qtdxmgRvRUI=;
 b=rIfnn+Bdb1LfHSQXaMlDL0XriYEb+R34KHWw21BE7ECDColi1OahANYCERtEMw3xW5Fw0pHHPpKF0Fs4r5tpY5YFOvmtWU3c/ZIcHrs8KmmblYHZnDJ81eXV9dxWkVScEzOjyRSoNSDXRs2NL9Hoo0bVZA8dUqJLPFcafx/osNk=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MW4PR12MB6825.namprd12.prod.outlook.com (2603:10b6:303:20d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.17; Wed, 8 Mar
 2023 20:14:42 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918%4]) with mapi id 15.20.6178.017; Wed, 8 Mar 2023
 20:14:42 +0000
Message-ID: <d544748c-8a2b-7c08-f199-182a56af22be@amd.com>
Date: Wed, 8 Mar 2023 21:14:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Asahi Lina <lina@asahilina.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>,
 Jarkko Sakkinen <jarkko@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-10-917ff5bc80a8@asahilina.net>
 <cd788ccf-0cf1-85d5-1bf8-efc259bd7e11@amd.com>
 <a075d886-0820-b6fb-fcd0-45bfdc75e37d@asahilina.net>
 <2b1060e9-86ba-7e16-14f1-5b5fa63de719@amd.com>
 <9f76bb68-b462-b138-d0ad-d27c972530d4@asahilina.net>
 <a39c6b40-f190-002d-ae1c-8b58c6442df2@amd.com>
 <4bbfc1a3-cfc3-87f4-897b-b6637bac3bd0@asahilina.net>
 <b0aa78b2-b432-200a-8953-a80c462fa6ee@amd.com>
 <c0624252-070e-bd44-2116-93a1d63a1359@asahilina.net>
 <d1fccceb-ca77-f653-17fc-63168e0da884@amd.com>
 <9c3dc2ad-11e4-6004-7230-8ca752e3d9f7@asahilina.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <9c3dc2ad-11e4-6004-7230-8ca752e3d9f7@asahilina.net>
X-ClientProxiedBy: FR2P281CA0045.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::17) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|MW4PR12MB6825:EE_
X-MS-Office365-Filtering-Correlation-Id: fbcf49ec-2237-4335-b8a7-08db2011c0b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IYV+CQJC/iGsBfyKnpAitTKZzvYY52tgHe3NLKSIAg6usnQOWjEAZB39BVPyELuTmKfMLX7F7RlG/n0agVikY+fNOTIEQ2gOwg/zjkoF3B7+855PEQBzE2QhBIgg1t3vZEAK7be9NUxJ4uFbl/Nudf9cr9sBrlwo5JmRnlgbadhooL9RKBh0Qbat8uuxPiD3qCdUcPW96qobIN7HBhplAYNz1OxNE1RbROu9D3b19bybIFDyah3uU+dWlEkOdKrQqXCeqjrPHqTu53a82IDfkx7Cu1s0cXxfD03LdEb1fZS5Xm/gnzrGLN6qd2timJABm7Ds+GrDasDEVCOAO2AiAWvSEkzx/MCj5QBX4TFg44JHxidmISM6OgZnADj2NAQqtZ5qH9dSdnxMbmQlTpRdxVvI9jbI3D1W8fRBV6BguSZPEWIoCIKtdoe7r+KgPFc66OACMBofPx1QX5mHnDdTJvT3IKFR4RCvAJDOQMkUNK4OtPf3vT5XgwsqkWS1hyKUnCPrMoq50vyQ413ke0wtilM2e39mhz4hCjOFuZxYMXlr02nmfRdrj6fa4KTZOOo88I9QqI68c6a1bZ85MPljgYWl0PXNvsGyaBgKbEXuPtrGkmuJGtO+9MLD4Ik5UkhHJ0zlDIltBFVgdhxVWiE/XRGCldgzVxM2zADDzXueixZuaq04u1gePSU06OXNSe6ChdIz1U6WvGf95hW+YtAhdVM/2EG24xlRPgCOOR48V9gzXd2+6dGO2Gg7J6OooijE
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(346002)(366004)(376002)(39860400002)(136003)(451199018)(478600001)(5660300002)(7416002)(186003)(83380400001)(6666004)(6506007)(6512007)(31696002)(66574015)(86362001)(2616005)(36756003)(6486002)(921005)(2906002)(316002)(41300700001)(8676002)(4326008)(66946007)(66476007)(66556008)(31686004)(38100700002)(54906003)(8936002)(110136005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RTBvQ3YwY294RTkwWWdSVno0aEl6R1FFblJXMWRyNGVwY2VDKzZyL0k1TjJ2?=
 =?utf-8?B?dFFNcGdxZm93cU5sMHdtQXZyWURpR3RKVTVFUXpCQ2JLKzBMbitGRno1cnBx?=
 =?utf-8?B?N0VtOXcrUmRGTTduMXA1Y1FXdUh4LzdOT21NK1ltSERjREd6WnVxSnBCelc5?=
 =?utf-8?B?WGZ6dGhDY0VCRVV6RHBlcGMwWGN3SFdwWkZOTXhFWWtURmxMWUd2OUU2Vi90?=
 =?utf-8?B?cTlnSEVZNGxWM2E5M2I3eStLWjFiYVYwZnFObkZ0Ry9tV0t0LzVaQzBpdWpL?=
 =?utf-8?B?VTBTc3Y4aitkbUIwVE45a3ExZmVVRjFNbmRKQXZBMWpja25OMjhWRStTdzA3?=
 =?utf-8?B?L0ttWUdNWTZZbTdOVXdndy9HaHB6TnlxWlhydVE5QmRlR3BpSVROVDgxRVZr?=
 =?utf-8?B?RmRJcVZpb0J1N0NCbVBoZmFKNHFya0s1bjJsYjh2UHFIeTJqb1BhSTB0T3ZW?=
 =?utf-8?B?Z0NMbXI1NnVjZWVncUZWYzRSb3oydDY4c2ZQQ28zMDE4VjkzcWFac1lDUmo1?=
 =?utf-8?B?QmcrWXJzU3o2U0pRNS9CWmQ5TTJZbVlwai85TUpJbUhKSWQ5MXZrcDh6dFBR?=
 =?utf-8?B?RDZwbWFxbm43bExqalpaVmlweHNHTzR6WjRqNlZiQ2dRSUJmeXVXZm11bDJD?=
 =?utf-8?B?K0dxSkJqTnFtSmQxQlQ2MGJxbkZWdktlS2xWWTJWeGFvdjVoejhwWFVFWmFk?=
 =?utf-8?B?aWxIK3B1NjBsZkZVbDdEUW5VUkNtS1U0a2JvMnhCL201ZVp6VkFKWnJXUnVG?=
 =?utf-8?B?ek9keC9KdDdBTDVWeVJpc0dtaGdWZWlKY3RCbWdDalhnSG0vN3JZZDlTOFpa?=
 =?utf-8?B?NEM0YjR3M0VySC9GU3ZwUEFzV3J6Z2xJV3l0TkpaVS85RXNpUVNaVmlZb0tK?=
 =?utf-8?B?aHVXNzRiN1JYeU1MRUZSaU1wMU85Tnc3a252KzhBR29VbkhPMmhrS1FSbC9w?=
 =?utf-8?B?eStJYmd6bW8ya1BvdmhBMVZtZTVCUlZmM1RlUVNZWWZxMXI4UWZCSHZ0TVZJ?=
 =?utf-8?B?TEhJcTRjUmR4ME1Saml0N2t5ajRSRDNZUWVaT2RMM0RlTFRzM1dmMDg5MzQ4?=
 =?utf-8?B?NnVpc0l3eDd4Z3prUnVIMjc5VytQT0lYUThQNjJGVXhaUXczQXF1TTJLYlZY?=
 =?utf-8?B?M3hlYmJ6VVNwK3UydVF1SVVYWkwvcUZNUUt0NisyWGxHb2RMbVFrek5FOEpr?=
 =?utf-8?B?WTB2OTkybXB2ZDNpaHJwdm1Qd1JBY3VzY00xdE1qUjJIMW1qaUtFS01iazFs?=
 =?utf-8?B?WTNzV1BMUHJMM3ovQ2hjWVVEN3hGRmh4MWVhZGd5T2ZWR3BMMENXVjJ4Z2xT?=
 =?utf-8?B?QnVnODl1d2dRRHZJbW5nZUFIQk5iSFhmZFhiQysxN09mQUZmQVRhOGRYalIw?=
 =?utf-8?B?YjIyMlNHNTI2SFFJT2xyUkN1SUFmNnh6dmR4RW1aRzNsWGxGeTdRa3N6bWFW?=
 =?utf-8?B?YTJhY2phRkhtcXM3bnVjWDhrUFpkY3RLSzJYS052TzBvV3FCUWhSZFFDV3VD?=
 =?utf-8?B?V3RyVmZFUVFpTHFQL3A4WXdIaXZpWHNvQW4wZnZwL2tWdGMvanpTckJlRVls?=
 =?utf-8?B?bnd3ZU5wL3RZTkxGYUVScEhhVjBHRVB2N3pqZ1M3VzlLa3I0VjVLbDJILzZq?=
 =?utf-8?B?ZFhlV3RiMEd1bU5YM1haNmVYanNFSmtuQmJjcnJyQmVySU5WT1E2TFlTeGtN?=
 =?utf-8?B?aU5vTXNRZWU5RW5oaGNuZUZnN2EwS2NpbXJCZkJwVWp1ZUFVR1NhMDBYSjQy?=
 =?utf-8?B?N243aEF0cHIrYjBaWXFuQW15SHByNlc0UVV6UHNxeVlPK0RBV3B4UkljbU5R?=
 =?utf-8?B?MlR6SFdFZlhQLzF2bWtCb201TlZIOTNtdHlYQ1hWTldXWkdXTjlxbzVIVFkr?=
 =?utf-8?B?UkZ4eVhVOTJnZ2FMT0NpQmRJTGdMKzU0UjlkckJMVXlMNGdEMDhvU3laeEtS?=
 =?utf-8?B?bUpUeURLRkM0Sm9rRmU5dG4zUG53SXNkbTRrSmpsYThnVE1pMUo3cGN2M1RE?=
 =?utf-8?B?Q3hIeWpVQnBJZHdnYmU3M1dLTE8zVGk1UnUyWFUrVWxoNUk1NWk1V08vcE5D?=
 =?utf-8?B?eTBEUStBdzdHdnE4ZFlBT1lubUgyOEZCNnROTEIvbnVVTFlPSDUzNHhPdTU2?=
 =?utf-8?B?UHEwTzZrOXJiT1c3bTREZ3RBSzd2Q3lZK1lQbHlPbEllNGwzQ2phZXYyUTBs?=
 =?utf-8?Q?OJfr959AYem0/txJLRM8T/IUW0Eh3TprdgueUf/zdvq4?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbcf49ec-2237-4335-b8a7-08db2011c0b9
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 20:14:42.5799
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xs368j1z5Zs285u7IWMwIuZXbvo0gqecIVDI7W45fBRHwN0Vyi5NxSPooy8EGoUo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB6825
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 65A943EF9C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.75:from];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: SAA2EP66BZZP2WEX2FLGN37MWYZHFPF5
X-Message-ID-Hash: SAA2EP66BZZP2WEX2FLGN37MWYZHFPF5
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SAA2EP66BZZP2WEX2FLGN37MWYZHFPF5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDguMDMuMjMgdW0gMjA6NDUgc2NocmllYiBBc2FoaSBMaW5hOg0KPiBPbiAwOS8wMy8yMDIz
IDA0LjEyLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gQW0gMDguMDMuMjMgdW0gMjA6MDUg
c2NocmllYiBBc2FoaSBMaW5hOg0KPj4+IFtTTklQXQ0KPj4+PiBXZWxsIGl0J3Mgbm90IHRoZSBi
ZXR0ZXIgd2F5LCBpdCdzIHRoZSBvbmx5IHdheSB0aGF0IHdvcmtzLg0KPj4+Pg0KPj4+PiBJIGhh
dmUgdG8gYWRtaXQgdGhhdCBteSBiZXQgb24geW91ciBpbnRlbnRpb25zIHdhcyB3cm9uZywgYnV0
IGV2ZW4gdGhhdA0KPj4+PiB1c2UgY2FzZSBkb2Vzbid0IHdvcmsgY29ycmVjdGx5Lg0KPj4+Pg0K
Pj4+PiBTZWUgd2hlbiB5b3VyIGNhbGxiYWNrIHJldHVybnMgZmFsc2UgaXQgaXMgcGVyZmVjdGx5
IHBvc3NpYmxlIHRoYXQgYWxsDQo+Pj4+IGh3IGZlbmNlcyBhcmUgc2lnbmFsZWQgYmV0d2VlbiBy
ZXR1cm5pbmcgdGhhdCBpbmZvcm1hdGlvbiBhbmQgcHJvY2Vzc2luZyBpdC4NCj4+Pj4NCj4+Pj4g
VGhlIHJlc3VsdCB3b3VsZCBiZSB0aGF0IHRoZSBzY2hlZHVsZXIgZ29lcyB0byBzbGVlcCBhbmQg
bmV2ZXIgd2FrZXMgdXANCj4+Pj4gYWdhaW4uDQo+Pj4gVGhhdCBjYW4ndCBoYXBwZW4sIGJlY2F1
c2UgaXQgd2lsbCBqdXN0IGdvIGludG8gYW5vdGhlciBpdGVyYXRpb24gb2YgdGhlDQo+Pj4gZHJt
X3NjaGVkIG1haW4gbG9vcCBzaW5jZSB0aGVyZSBpcyBhbiBlbnRpdHkgYXZhaWxhYmxlIHN0aWxs
Lg0KPj4+DQo+Pj4gUmF0aGVyIHRoZXJlIGlzIHByb2JhYmx5IHRoZSBvcHBvc2l0ZSBidWcgaW4g
dGhpcyBwYXRjaDogdGhlIGNhbl9ydW5fam9iDQo+Pj4gbG9naWMgc2hvdWxkIGJlIG1vdmVkIGlu
dG8gdGhlIHdhaXRfZXZlbnRfaW50ZXJydXB0aWJsZSgpIGNvbmRpdGlvbg0KPj4+IGNoZWNrLCBv
dGhlcndpc2UgSSB0aGluayBpdCBjYW4gZW5kIHVwIGJ1c3ktbG9vcGluZyBzaW5jZSB0aGUgY29u
ZGl0aW9uDQo+Pj4gaXRzZWxmIGNhbiBiZSB0cnVlIGV2ZW4gd2hlbiB0aGUgY2FuX3J1bl9qb2Ig
Y2hlY2sgYmxvY2tzIGl0Lg0KPj4+DQo+Pj4gQnV0IHRoZXJlIGlzIG5vIHJpc2sgb2YgaXQgZ29p
bmcgdG8gc2xlZXAgYW5kIG5ldmVyIHdha2luZyB1cCBiZWNhdXNlDQo+Pj4gam9iIGNvbXBsZXRp
b25zIHdpbGwgd2FrZSB1cCB0aGUgd2FpdHF1ZXVlIGJ5IGRlZmluaXRpb24sIGFuZCB0aGF0DQo+
Pj4gaGFwcGVucyBhZnRlciB0aGUgZHJpdmVyLXNpZGUgcXVldWVzIGFyZSBwb3BwZWQuIElmIHRo
aXMgcHJvYmxlbSBjb3VsZA0KPj4+IGhhcHBlbiwgdGhlbiB0aGUgZXhpc3RpbmcgaHdfc3VibWlz
c2lvbl9saW1pdCBsb2dpYyB3b3VsZCBiZSBicm9rZW4gaW4NCj4+PiB0aGUgc2FtZSB3YXkuIEl0
IGlzIGxvZ2ljYWxseSBlcXVpdmFsZW50IGluIGhvdyBpdCB3b3Jrcy4NCj4+Pg0KPj4+IEJhc2lj
YWxseSwgaWYgcHJvcGVybHkgZG9uZSBpbiB3YWl0X2V2ZW50X2ludGVycnVwdGlibGUsIGl0IGlz
IGV4YWN0bHkNCj4+PiB0aGUgbG9naWMgb2YgdGhhdCBtYWNybyB0aGF0IHByZXZlbnRzIHRoaXMg
cmFjZSBjb25kaXRpb24gYW5kIG1ha2VzDQo+Pj4gZXZlcnl0aGluZyB3b3JrIGF0IGFsbC4gV2l0
aG91dCBpdCwgZHJtX3NjaGVkIHdvdWxkIGJlIGNvbXBsZXRlbHkgYnJva2VuLg0KPj4+DQo+Pj4+
IEFzIEkgc2FpZCB3ZSBleGVyY2lzZWQgdGhvc2UgaWRlYXMgYmVmb3JlIGFuZCB5ZXMgdGhpcyBh
cHByb2FjaCBoZXJlDQo+Pj4+IGNhbWUgdXAgYmVmb3JlIGFzIHdlbGwgYW5kIG5vIGl0IGRvZXNu
J3Qgd29yay4NCj4+PiBJdCBjYW4gbmV2ZXIgZGVhZGxvY2sgd2l0aCB0aGlzIHBhdGNoIGFzIGl0
IHN0YW5kcyAodGhvdWdoIGl0IGNvdWxkIGJ1c3kNCj4+PiBsb29wKSwgYW5kIGlmIHByb3Blcmx5
IG1vdmVkIGludG8gdGhlIHdhaXRfZXZlbnRfaW50ZXJydXB0aWJsZSgpLCBpdA0KPj4+IHdvdWxk
IGFsc28gbmV2ZXIgYnVzeSBsb29wIGFuZCB3b3JrIGVudGlyZWx5IGFzIGludGVuZGVkLiBUaGUg
YWN0dWFsIEFQSQ0KPj4+IGNoYW5nZSBpcyBzb3VuZC4NCj4+Pg0KPj4+IEkgZG9uJ3Qga25vdyB3
aHkgeW91J3JlIHRyeWluZyBzbyBoYXJkIHRvIGNvbnZpbmNlIGV2ZXJ5b25lIHRoYXQgdGhpcw0K
Pj4+IGFwcHJvYWNoIGlzIGZ1bmRhbWVudGFsbHkgYnJva2VuLi4uIEl0IG1pZ2h0IGJlIGEgYmFk
IGlkZWEgZm9yIG90aGVyDQo+Pj4gcmVhc29ucywgaXQgbWlnaHQgZW5jb3VyYWdlIGluY29ycmVj
dCB1c2FnZSwgaXQgbWlnaHQgbm90IGJlIHRoZSBiZXN0DQo+Pj4gb3B0aW9uLCB0aGVyZSBhcmUg
cGxlbnR5IG9mIGFyZ3VtZW50cyB5b3UgY2FuIG1ha2UuLi4gYnV0IHlvdSBqdXN0IGtlZXANCj4+
PiB0cnlpbmcgdG8gbWFrZSBhbiBhcmd1bWVudCB0aGF0IGl0IGp1c3QgY2FuJ3Qgd29yayBhdCBh
bGwgZm9yIHNvbWUNCj4+PiByZWFzb24uIFdoeT8gSSBhbHJlYWR5IHNhaWQgSSdtIGhhcHB5IGRy
b3BwaW5nIGl0IGluIGZhdm9yIG9mIHRoZSBmZW5jZXMuLi4NCj4+IFdlbGwgYmVjYXVzZSBpdCBp
cyBicm9rZW4uDQo+Pg0KPj4gV2hlbiB5b3UgbW92ZSB0aGUgY2hlY2sgaW50byB0aGUgd2FpdF9l
dmVudF9pbnRlcnJ1cHRpYmxlIGNvbmRpdGlvbiB0aGVuDQo+PiB3aG8gaXMgZ29pbmcgdG8gY2Fs
bCB3YWl0X2V2ZW50X2ludGVycnVwdGlibGUgd2hlbiB0aGUgY29uZGl0aW9uIGNoYW5nZXM/DQo+
IEkgdGhpbmsgeW91IG1lYW4gd2FrZV91cF9pbnRlcnJ1cHRpYmxlKCkuIFRoYXQgd291bGQgYmUN
Cj4gZHJtX3NjaGVkX2pvYl9kb25lKCksIG9uIHRoZSBmZW5jZSBjYWxsYmFjayB3aGVuIGEgam9i
IGNvbXBsZXRlcywgd2hpY2gNCj4gYXMgSSBrZWVwIHNheWluZyBpcyB0aGUgc2FtZSBsb2dpYyB1
c2VkIGZvcg0KPiBod19ycV9jb3VudC9od19zdWJtaXNzaW9uX2xpbWl0IHRyYWNraW5nLg0KDQpB
cyB0aGUgZG9jdW1lbnRhdGlvbiB0byB3YWl0X2V2ZW50IHNheXM6DQoNCiDCoCogd2FrZV91cCgp
IGhhcyB0byBiZSBjYWxsZWQgYWZ0ZXIgY2hhbmdpbmcgYW55IHZhcmlhYmxlIHRoYXQgY291bGQN
CiDCoCogY2hhbmdlIHRoZSByZXN1bHQgb2YgdGhlIHdhaXQgY29uZGl0aW9uLg0KDQpTbyB3aGF0
IHlvdSBlc3NlbnRpYWxseSB0cnkgdG8gZG8gaGVyZSBpcyB0byBza2lwIHRoYXQgYW5kIHNheSAN
CmRybV9zY2hlZF9qb2JfZG9uZSgpIHdvdWxkIGNhbGwgdGhhdCBhbnl3YXksIGJ1dCB3aGVuIHlv
dSByZWFkIGFueSANCnZhcmlhYmxlIHRvIGRldGVybWluZSB0aGF0IHN0YXRlIHRoZW4gYXMgZmFy
IGFzIEkgY2FuIHNlZSBub3RoaW5nIGlzIA0KZ3VhcmFudHlpbmcgdGhhdCBvcmRlci4NCg0KVGhl
IG9ubHkgb3RoZXIgcG9zc2liaWxpdHkgaG93IHlvdSBjb3VsZCB1c2UgdGhlIGNhbGxiYWNrIGNv
cnJlY3RseSANCndvdWxkIGJlIHRvIGNhbGwgZHJtX2ZlbmNlX2lzX3NpZ25hbGVkKCkgdG8gcXVl
cnkgdGhlIHN0YXRlIG9mIHlvdXIgaHcgDQpzdWJtaXNzaW9uIGZyb20gdGhlIHNhbWUgZmVuY2Ug
d2hpY2ggaXMgdGhlbiBzaWduYWxlZC4gQnV0IHRoZW4gdGhlIA0KcXVlc3Rpb24gaXMgb25jZSBt
b3JlIHdoeSB5b3UgZG9uJ3QgZ2l2ZSB0aGF0IGZlbmNlIGRpcmVjdGx5IHRvIHRoZSANCnNjaGVk
dWxlcj8NCg0KPiBQbGVhc2UgdGhpbmsgYWJvdXQgaXQgZm9yIGEgc2Vjb25kLA0KDQpZZWFoLCBJ
J20gdHJ5aW5nIHRvIHJlYWxseSBmb2xsb3cgeW91ciBpbnRlbnRpb25zIGhlcmUuIEJ1dCB0aGF0
IGRvZXNuJ3QgDQpyZWFsbHkgbWFrZXMgc2Vuc2UuDQoNCkVpdGhlciB5b3UgYXJlIHRyeWluZyB0
byBkbyBzb21ldGhpbmcgaW52YWxpZCBvciB5b3UgYXJlIHRyeWluZyB0byANCmNpcmN1bXZlbnQg
dGhlIG9iamVjdCBtb2RlbCBzb21laG93IGFuZCBhZGQgYSBzaG9ydGN1dCBmb3IgdGhlIHNpZ25h
bGluZyANCkFQSS4gQm90aCB3b3VsZCBiZSBtb3JlIHRoYW4gZmlzaHkuDQoNClJlZ2FyZHMsDQpD
aHJpc3RpYW4uDQoNCj4gICBpdCdzIHJlYWxseSBub3QgdGhhdCBjb21wbGljYXRlZCB0bw0KPiBz
ZWUgd2h5IGl0IHdvcmtzOg0KPg0KPiAtIERyaXZlciBwb3BzIG9mZiBjb21wbGV0ZWQgY29tbWFu
ZHMgPC0tIGNhbl9ydW5fam9iIGNvbmRpdGlvbiBzYXRpc2ZpZWQNCj4gLSBEcml2ZXIgc2lnbmFs
cyBmZW5jZQ0KPiAgIC0gZHJtX3NjaGVkX2pvYl9kb25lX2NiKCkNCj4gICAgLSBkcm1fc2NoZWRf
am9iX2RvbmUoKQ0KPiAgICAgLSBhdG9taWNfZGVjKCZzY2hlZC0+aHdfcnFfY291bnQpOyA8LS0g
aHdfc3VibWlzc2lvbl9saW1pdCBzYXRpc2ZpZWQNCj4gICAgIC0gLi4uDQo+ICAgICAtIHdha2Vf
dXBfaW50ZXJydXB0aWJsZSgmc2NoZWQtPndha2VfdXBfd29ya2VyKTsNCj4gICAgICAgIF4tIGhh
cHBlbnMgYWZ0ZXIgYm90aCBjb25kaXRpb25zIGFyZSBwb3RlbnRpYWxseSBzYXRpc2ZpZWQNCj4N
Cj4gSXQgcmVhbGx5IGlzIGNvbXBsZXRlbHkgZXF1aXZhbGVudCB0byBqdXN0IG1ha2luZyB0aGUg
aHdfcnFfY291bnQgbG9naWMNCj4gY3VzdG9taXphYmxlIGJ5IHRoZSBkcml2ZXIuIFRoZSBhY3R1
YWwgZmxvdyBpcyB0aGUgc2FtZS4gQXMgbG9uZyBhcyB0aGUNCj4gZHJpdmVyIGd1YXJhbnRlZXMg
aXQgc2F0aXNmaWVzIHRoZSBjYW5fcnVuX2pvYigpIGNvbmRpdGlvbiBiZWZvcmUNCj4gc2lnbmFs
aW5nIHRoZSBjb21wbGV0aW9uIGZlbmNlIHRoYXQgdHJpZ2dlcmVkIHRoYXQgY2hhbmdlLCBpdCB3
b3JrcyBmaW5lLg0KPg0KPj4gQXMgSSBzYWlkIHRoaXMgaWRlYSBjYW1lIHVwIGJlZm9yZSBhbmQg
d2FzIHJlamVjdGVkIG11bHRpcGxlIHRpbWVzLg0KPiBNYXliZSBpdCB3YXMgYSBkaWZmZXJlbnQg
aWRlYSwgb3IgbWF5YmUgaXQgd2FzIHJlamVjdGVkIGZvciBvdGhlcg0KPiByZWFzb25zLCBvciBt
YXliZSBpdCB3YXMgd3JvbmdseSByZWplY3RlZCBmb3IgYmVpbmcgYnJva2VuIHdoZW4gaXQgaXNu
J3QgXl4NCj4NCj4gfn4gTGluYQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
