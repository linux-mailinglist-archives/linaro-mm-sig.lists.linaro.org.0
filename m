Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A949C6B039C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 11:01:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B70183F0B4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 10:01:23 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2062.outbound.protection.outlook.com [40.107.93.62])
	by lists.linaro.org (Postfix) with ESMTPS id 8DA073E920
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 10:01:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=QkVl4DtB;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.62 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TxILmI+8/G+VyBEeJC5YYo//c8ziAHU40/RhZVr63pUGQy0YH5pA5H7T7vg2bSnTb66+lcWEDIhNc5paVszi63RGbS0AT9uNcMKqYZjdvJ2LuaZwNugzLxMEDR6B2JXuHqov3uV/1PlvZc+SNak9wsxAzhwRgivERtBYVEyWGnpFL4AC8hafSl/hXwQ3/5ZxqMcXlL7MadDPyVxsVYfYi8b0W5/oI7G9vNekwPdrpgypC79N+TQJnpMUGnyTOyfiS3iGvhNZCSkFsb7L3Nwt0OyuFvzEKiNbZKuOUrjH7rQpv8AjrimBHom+zdze2UQzWRNhqje5uCBiGN5Xqj2QwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V3SWSuItj0/YT9siycK/+X3qSxIvFMt5r3pqvM07iFo=;
 b=MX86YE0qfyWwFyvw1y/SwdmQAVhMkUhpm5FoA2CFU1caZiz+OKdS2GHTVUO+AqLxYC2aFtt5R7uumgBRh36RXEEWH88cLAFbLMDwFZtsk5hjjbXu8Ip8hg7UNszxIrzGL1EyCu/lLbGOW3JrEGzttOBe2YybPock62aGi5IXQSyugbV7pBFUSD5L58qCz7BGil1G5Z2JW5oib06lT0fZ4YmdJLXgv1mbTKS10y/fUiFLmFeu3Wykh4Vco1wakXRGhX534UO3YiiirE/QU0tQTFNrUOUF9XfbmhtM/n2RgxvF/j1oi4rRlzSzvqjB92I5Jeo08rpbqYjzxD+sLY+Q0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V3SWSuItj0/YT9siycK/+X3qSxIvFMt5r3pqvM07iFo=;
 b=QkVl4DtBGra658QWfFxaDKLFxNCAUFuzvs59XIh+LXFjX4TjhauysZNRJte3poBPemuqroIY+VGqh8z7q0u01dHEDo+I6R0R+jncPE9Uwck2C9VHiAHZzRJIgB7fcfxQKXgxSH4iCdJMkL3iiN4WLMpBuA/XXaozqyzVkHhCZbM=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CO6PR12MB5428.namprd12.prod.outlook.com (2603:10b6:5:35c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Wed, 8 Mar
 2023 10:01:01 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918%4]) with mapi id 15.20.6178.017; Wed, 8 Mar 2023
 10:01:01 +0000
Message-ID: <2b1060e9-86ba-7e16-14f1-5b5fa63de719@amd.com>
Date: Wed, 8 Mar 2023 11:00:52 +0100
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
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <a075d886-0820-b6fb-fcd0-45bfdc75e37d@asahilina.net>
X-ClientProxiedBy: FR3P281CA0078.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::19) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|CO6PR12MB5428:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bcb2c75-30c6-49c8-fdbf-08db1fbc05cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	enovnqP8+30LnLQx01JmIy/22NFO/n/mDOqvoVwSo1eKvutksVIv1kBNmx6ACCU+JNEgIE2Fjc60REVLV9bmB2KFukBb1evzIF4F6oMCwn4vGgCKFCqfL74xeRHTSerkVXYPnPcfTdlrurDuwOQN1D7RGKEJ9IMcPSeOBVao16+68A64NgIdiPYo69KCkyztZduIbETbt/pvxpdopVdlmuAgD+Ky2sGKOg9sUzUjAhk74flNpvruTkSfwCyh0E8O2YGQPztxOjZfZVdEsPaYYk4AJSheztyWY29AVsyr5R5L74IIrVgs+BiEkksBfo0TgTrbw1ocvX2kkrEkv6y3ceqoog/RFosiRPJuQt1DA5vXWeTkDzCyIbtSyALGhGDbR44X1WMYIuDXu3tqtkqYYOv3aeUzzCO7es/NOGiXrU4n0JMDqOH41QWKneME646tMtfxZqtDLtQ0uit0Mmr2XNohrolqJedXSA3/lpndcFF0HPbc5uakobqGBNDNm/GoLyS0Hemr5uXm+Eui3bbyGF7Z7ZWgQYaFeBIzokBg0V4asjW6dycAm0xX+yZDJxpGjspUVS2XfaFjtOWcHVx2O/kIly3ROh5DdwUwz5GjYG++sU5nKLV2qSNB+Qv8kbbOEFoqpwQdxcWZnUfPCX0Ucd5nOoM+6w+617IwDkG+pixjr4Esp/P696OxZP4XKOVorlknWJbMhLn+xq4KRqIs4mpn+zwDmppIv7vQ2wN+/06Ry+pRx6bzRpKZUn8ElPEI
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(136003)(39860400002)(396003)(376002)(346002)(451199018)(6666004)(110136005)(31696002)(54906003)(66574015)(41300700001)(8676002)(86362001)(83380400001)(4326008)(36756003)(316002)(8936002)(66946007)(966005)(66476007)(478600001)(66556008)(7416002)(6486002)(5660300002)(186003)(921005)(2906002)(38100700002)(2616005)(31686004)(6512007)(6506007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TnpiSXJJZVl2eEdxQUJQdDJFaTFwMTlOaHJheXRpN05aZ2syNnFKeUtPM2ZH?=
 =?utf-8?B?QktPQVdEZVFJeEs1a0FyVWdoY01vU000eDc1NUZTeFdSNVZXSk02MXBGSHdN?=
 =?utf-8?B?bEhwL21vaHhGanphZkFac012dWtnSXNDcXhXdDRiZzVXY1UzMDBTRjR5aE4v?=
 =?utf-8?B?WlRqYndkQUpuSW83cWV6RzdSaEJHU1NPL0xhbUtselZnVmNTTlpWYThuNzBp?=
 =?utf-8?B?U2x4Nkl3R0NFK2VFYVZpUGo4aVJYODN6UUtGNVBtYUVJZ00xak5qWktCQ3R6?=
 =?utf-8?B?cVhaUmJjdzhQa0tJdmtOVmNVZUl2MmlqVWtKa2laVHgxdlR0cnd4TkxlRG1T?=
 =?utf-8?B?SG5Md0tiaGJST3F5MGFwdGtQcXRJL2hmSXBjMS80Mm5XNitGOWFVcDd5TVpG?=
 =?utf-8?B?am8wSGhJQThoV0ZCYi96Ni9iWldVbHRBVktiKzZCOW02QmJPSGFFWWRnNDJW?=
 =?utf-8?B?c1hhakw5NXhIUWlrN2xVSGRKY2Uxd2pSOW9HRGFQd3FFbCs1K3ArdlhUaEw4?=
 =?utf-8?B?dFYvdjltWnZjc3RDU0t1MkloYm1jRW9sWmoyeHMzYVhtaTFxL1laY05FNDZh?=
 =?utf-8?B?emtxNjcxZC9HcTdhT0NXeHg5T0YvYmovWGhFR3E5bUcvNDFsR0dUL1lTUXZ3?=
 =?utf-8?B?SlZpN0tRVkNwa0tBb0dQSEdLYmcrZDRRVnpnVFZqdGlnUDBwZndYMHF1TkhC?=
 =?utf-8?B?ajZNVXp4UDNueTc1STlBVUJNQzg4ZENDSUg0Zkw0eUZINElJNi9DMXpRSVlJ?=
 =?utf-8?B?eTRnSHZ2K0pmUlhCRnAvRFRnNjZvTXpTOUxSSTZ1Z3oxWEJTYmVxQ081UTlE?=
 =?utf-8?B?ZWRyNDZlNjNTc1JjTVNyTUxrUTZVemZTRXFiSUJXZWtsRVpqRi9UbExtVEw0?=
 =?utf-8?B?R0FPblloTi9vTTdEbVlCYU51dGRTZHgwdmkzODBuUXdSaXBsSWtBcXdTMlVX?=
 =?utf-8?B?MzgrbjA5ZGVxOTZjTkp4eTk1ZWEzWEZ3TnhQRjg5eG5MYmRmcEJEMlRhOTZO?=
 =?utf-8?B?ejUvTUF4NFRnZUJsWlVCcU9EWlFDU0hwNzd4YnFTbnJyRHdLQ3pJNDZYZ2du?=
 =?utf-8?B?Sy9ERkVKS3o0Qk1qcW5OLzYxN0Q1MFZDYWJUeUNFb2p6NkpvV0hFZEd1ZEJV?=
 =?utf-8?B?NDhiM3V3azRtU0xJU2FQMGJ6bm1TemJwa00xR3hONjV2MEMxL09NMW8zcE8v?=
 =?utf-8?B?U0RIa3ptSXJvSGZlTERLTGphK2UrSWJaNDZsVGtjbnM3K3I4NlhvcDY1WUNk?=
 =?utf-8?B?VTF0bTlwRU9sTE5tL0l4TXpaU25sbjQ3V0ZyTjRZNUJINE1ZVVNDeDZVcUty?=
 =?utf-8?B?UStPLy9WZEhEbG9DVjJpcDdtYnYwbXBpSENVNEFQaUxGcUw2UTFrWDBlODhL?=
 =?utf-8?B?Q0cvNE5oK1lxU3BSK2hVaWg2cFFYa2xScW9OdHFGMm9OVG1KOGhWeC9WMUhr?=
 =?utf-8?B?Y0xCbU5zalhuVzlyZm5XUEVsdVZmTmRpcXEyQmlPR0x3LzhJZE1WRzIrb3lX?=
 =?utf-8?B?YXFWdWcwdzdPUThQekc2Y2NRbmVobFVUenZ5RDJCaWFucHkzVTRvQjM1OVpB?=
 =?utf-8?B?QlAycDFZUnlRMHNTeFN1WG9PZWpvUS9MUlJteTVqbFFwOFZGOHQ4cHNlTGtU?=
 =?utf-8?B?anZGdmdRYlpkcnBZc09zQ3JCTVFuMmNYMlljekR0RlBjTmZDblJJbGltcTNC?=
 =?utf-8?B?VE80Lyt6ZVFySXRGMmdIRjJ3WnRGOUY4VG9hcWJGT2pZT1I4TElkSUNnMnJx?=
 =?utf-8?B?M3ZEUGlYMVRVbnBtNmE3Y1VkZnd2cWF4Y1g5bXJTUTlscFU0Z094MjFIUHNa?=
 =?utf-8?B?dlNoVlhGdXdScmloYkY0bzdDajVNNXdBanI0eHhlSWxDRlZFWlcxOTNwaUQ0?=
 =?utf-8?B?dHRxUE0wUWtzaWJrM1VITUJ1ZFBBRUloLzZHRHRlUUIxRzFCam56U2UyR01Z?=
 =?utf-8?B?b2xWSExZZEFWNm8zdDQ3NUYyaUdmQ2NwTklqNHhORTkyQVlUa2FGaFFpVEYv?=
 =?utf-8?B?blNGWEJIdCtZaTJpM1A4UE5jV04yNVhWU3BsTFNEcWZGR0lPb0dxRzNnYWtM?=
 =?utf-8?B?dGx2RWYxdjR5OTZEN0V5dERFK2liVWtHQ2E1RzBoN1ExMk50dHRROC9xdWdq?=
 =?utf-8?B?bW9QTEFvTC9iNlZ1b1RuZ1pPWWttTjIwMHNZT0N6MHdyOXNzWTJrM1JhR2tx?=
 =?utf-8?Q?vO8VX5TJ7Oebu6EOdcJYUXFUEKbZeJ9KQoJ1wwI2wus3?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bcb2c75-30c6-49c8-fdbf-08db1fbc05cb
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 10:01:01.6343
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4Ye4Y4F+gWQKYc2TSb/0izUB2OWVW5cpoqs32ymWr+xxOKbNRQ5qFsOOUIShMtpW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR12MB5428
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8DA073E920
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.62:from]
Message-ID-Hash: G3IC46E6TZL7HIS3O64BPTPFAXNW7TYG
X-Message-ID-Hash: G3IC46E6TZL7HIS3O64BPTPFAXNW7TYG
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G3IC46E6TZL7HIS3O64BPTPFAXNW7TYG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDguMDMuMjMgdW0gMTA6NDEgc2NocmllYiBBc2FoaSBMaW5hOg0KPiBPbiAwOC8wMy8yMDIz
IDE3LjQ2LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gQW0gMDcuMDMuMjMgdW0gMTU6MjUg
c2NocmllYiBBc2FoaSBMaW5hOg0KPj4+IFNvbWUgaGFyZHdhcmUgbWF5IHJlcXVpcmUgbW9yZSBj
b21wbGV4IHJlc291cmNlIHV0aWxpemF0aW9uIGFjY291bnRpbmcNCj4+PiB0aGFuIHRoZSBzaW1w
bGUgam9iIGNvdW50IHN1cHBvcnRlZCBieSBkcm1fc2NoZWQgaW50ZXJuYWxseS4gQWRkIGENCj4+
PiBjYW5fcnVuX2pvYiBjYWxsYmFjayB0byBhbGxvdyBkcml2ZXJzIHRvIGltcGxlbWVudCBtb3Jl
IGxvZ2ljIGJlZm9yZQ0KPj4+IGRlY2lkaW5nIHdoZXRoZXIgdG8gcnVuIGEgR1BVIGpvYi4NCj4+
IFdlbGwgY29tcGxldGUgTkFLLg0KPj4NCj4+IFRoaXMgaXMgY2xlYXJseSBnb2luZyBhZ2FpbnN0
IHRoZSBpZGVhIG9mIGhhdmluZyBqb2JzIG9ubHkgZGVwZW5kIG9uDQo+PiBmZW5jZXMgYW5kIG5v
dGhpbmcgZWxzZSB3aGljaCBpcyBtYW5kYXRvcnkgZm9yIGNvcnJlY3QgbWVtb3J5IG1hbmFnZW1l
bnQuDQo+Pg0KPj4gSWYgdGhlIGh3IGlzIGJ1c3kgd2l0aCBzb21ldGhpbmcgeW91IG5lZWQgdG8g
cmV0dXJuIHRoZSBmZW5jZSBmb3IgdGhpcw0KPj4gZnJvbSB0aGUgcHJlcGFyZV9qb2IgY2FsbGJh
Y2sgc28gdGhhdCB0aGUgc2NoZWR1bGVyIGNhbiBiZSBub3RpZmllZCB3aGVuDQo+PiB0aGUgaHcg
aXMgYXZhaWxhYmxlIGFnYWluLg0KPiBJIHRoaW5rIHlvdSBtaXN1bmRlcnN0b29kIHRoZSBpbnRl
bnQgaGVyZS4uLiBUaGlzIGlzbid0IGFib3V0IGpvYg0KPiBkZXBlbmRlbmNpZXMsIGl0J3MgYWJv
dXQgaW4tZmxpZ2h0IHJlc291cmNlIGxpbWl0cy4NCj4NCj4gZHJtX3NjaGVkIGFscmVhZHkgaGFz
IGEgaHdfc3VibWlzc2lvbl9saW1pdCB0aGF0IHNwZWNpZmllcyB0aGUgbnVtYmVyIG9mDQo+IHN1
Ym1pc3Npb25zIHRoYXQgY2FuIGJlIGluIGZsaWdodCwgYnV0IHRoYXQgZG9lc24ndCB3b3JrIGZv
ciB1cyBiZWNhdXNlDQo+IGVhY2ggam9iIGZyb20gZHJtX3NjaGVkJ3MgcG9pbnQgb2YgdmlldyBj
b25zaXN0cyBvZiBtdWx0aXBsZSBjb21tYW5kcw0KPiBzcGxpdCBhbW9uZyAzIGZpcm13YXJlIHF1
ZXVlcy4gVGhlIGZpcm13YXJlIGNhbiBvbmx5IHN1cHBvcnQgdXAgdG8gMTI4DQo+IHdvcmsgY29t
bWFuZHMgaW4gZmxpZ2h0IHBlciBxdWV1ZSAoYmFycmllcnMgZG9uJ3QgY291bnQpLCBvdGhlcndp
c2UgaXQNCj4gb3ZlcmZsb3dzIGEgZml4ZWQtc2l6ZSBidWZmZXIuDQo+DQo+IFNvIHdlIG5lZWQg
bW9yZSBjb21wbGV4IGFjY291bnRpbmcgb2YgaG93IG1hbnkgdW5kZXJseWluZyBjb21tYW5kcyBh
cmUNCj4gaW4gZmxpZ2h0IHBlciBxdWV1ZSB0byBkZXRlcm1pbmUgd2hldGhlciBpdCBpcyBzYWZl
IHRvIHJ1biBhIG5ldyBqb2IsDQo+IGFuZCB0aGF0IGlzIHdoYXQgdGhpcyBjYWxsYmFjayBhY2Nv
bXBsaXNoZXMuIFRoaXMgaGFzIHRvIGhhcHBlbiBldmVuDQo+IHdoZW4gaW5kaXZpZHVhbCBqb2Jz
IGhhdmUgbm8gYnVmZmVyL3Jlc291cmNlIGRlcGVuZGVuY2llcyBiZXR3ZWVuIHRoZW0NCj4gKHdo
aWNoIGlzIHdoYXQgdGhlIGZlbmNlcyB3b3VsZCBleHByZXNzKS4NCg0KWWVhaCwgSSBhbHJlYWR5
IGFzc3VtZWQgdGhhdCB5b3UgaGF2ZSBzb21ldGhpbmcgbGlrZSB0aGlzLg0KDQpBbmQgdG8gbWFr
ZSBpdCBjbGVhciB0aGlzIGlzIHVuZm9ydHVuYXRlbHkgYSBjb21wbGV0ZSBOQUsgdG8gdGhpcyAN
CmFwcHJvYWNoISBZb3UgY2FuJ3QgZG8gdGhpcyENCg0KVGhlIGJhY2tncm91bmQgaXMgdGhhdCBj
b3JlIG1lbW9yeSBtYW5hZ2VtZW50IHJlcXVpcmVzIHRoYXQgc2lnbmFsaW5nIGEgDQpmZW5jZSBv
bmx5IGRlcGVuZHMgb24gc2lnbmFsaW5nIG90aGVyIGZlbmNlcyBhbmQgaGFyZHdhcmUgcHJvZ3Jl
c3MgYW5kIA0Kbm90aGluZyBlbHNlLiBPdGhlcndpc2UgeW91IGltbWVkaWF0ZWx5IHJ1biBpbnRv
IHByb2JsZW1zIGJlY2F1c2Ugb2YgDQpjaXJjbGUgZGVwZW5kZW5jaWVzIG9yIHdoYXQgd2UgY2Fs
bCBpbmZpbml0ZSBmZW5jZXMuDQoNCkphc29uIEVrc3RyYW5kIGdhdmUgYSBjcmVhdGUgcHJlc2Vu
dGF0aW9uIG9uIHRoYXQgcHJvYmxlbSBhIGZldyB5ZWFycyANCmFnbyBvbiBMUEMuIEkgc3Ryb25n
bHkgc3VnZ2VzdCB5b3UgZ29vZ2xlIHRoYXQgb25lIHVwLg0KDQo+IFlvdSBjYW4gc2VlIHRoZSBk
cml2ZXIgaW1wbGVtZW50YXRpb24gb2YgdGhhdCBjYWxsYmFjayBpbg0KPiBkcml2ZXJzL2dwdS9k
cm0vYXNhaGkvcXVldWUvbW9kLnJzIChRdWV1ZUpvYjo6Y2FuX3J1bigpKSwgd2hpY2ggdGhlbg0K
PiBjYWxscyBpbnRvIGRyaXZlcnMvZ3B1L2RybS9hc2FoaS93b3JrcXVldWUucnMgKEpvYjo6Y2Fu
X3N1Ym1pdCgpKSB0aGF0DQo+IGRvZXMgdGhlIGFjdHVhbCBhdmFpbGFibGUgc2xvdCBjb3VudCBj
aGVja3MuDQo+DQo+IFRoZSBjYW5fcnVuX2pvYiBsb2dpYyBpcyB3cml0dGVuIHRvIG1pcnJvciB0
aGUgaHdfc3VibWlzc2lvbl9saW1pdCBsb2dpYw0KPiAoanVzdCBhIGJpdCBsYXRlciBpbiB0aGUg
c2NoZWQgbWFpbiBsb29wIHNpbmNlIHdlIG5lZWQgdG8gYWN0dWFsbHkgcGljaw0KPiBhIGpvYiB0
byBkbyB0aGUgY2hlY2spLCBhbmQganVzdCBsaWtlIGZvciB0aGF0IGNhc2UsIGNvbXBsZXRpb24g
b2YgYW55DQo+IGpvYiBpbiB0aGUgc2FtZSBzY2hlZHVsZXIgd2lsbCBjYXVzZSBhbm90aGVyIHJ1
biBvZiB0aGUgbWFpbiBsb29wIGFuZA0KPiBhbm90aGVyIGNoZWNrICh3aGljaCBpcyBleGFjdGx5
IHdoYXQgd2Ugd2FudCBoZXJlKS4NCg0KWWVhaCBhbmQgdGhhdCBod19zdWJtaXNzaW9uX2xpbWl0
IGlzIGJhc2VkIG9uIGEgZmVuY2Ugc2lnbmFsaW5nIGFnYWluLg0KDQpXaGVuIHlvdSBoYXZlIHNv
bWUgZmlybXdhcmUgbGltaXRhdGlvbiB0aGF0IGEgam9iIG5lZWRzIHJlc291cmNlcyB3aGljaCAN
CmFyZSBjdXJyZW50bHkgaW4gdXNlIGJ5IG90aGVyIHN1Ym1pc3Npb25zIHRoZW4gdGhvc2Ugb3Ro
ZXIgc3VibWlzc2lvbnMgDQpoYXZlIGZlbmNlcyBhcyB3ZWxsIGFuZCB5b3UgY2FuIHJldHVybiB0
aG9zZSBpbiB0aGUgcHJlcGFyZV9qb2IgY2FsbGJhY2suDQoNCklmIHRob3NlIG90aGVyIHN1Ym1p
c3Npb25zIGRvbid0IGhhdmUgZmVuY2VzLCB0aGVuIHlvdSBoYXZlIGEgbWFqb3IgDQpkZXNpZ24g
cHJvYmxlbSBpbnNpZGUgeW91ciBkcml2ZXIgYW5kIHdlIG5lZWQgdG8gZ2V0IGJhY2sgdG8gc3F1
YXJlIG9uZSANCmFuZCB0YWxrIGFib3V0IHRoYXQgZGVwZW5kZW5jeSBoYW5kbGluZy4NCg0KPiBU
aGlzIGNhc2UgKHBvdGVudGlhbGx5IHNjaGVkdWxpbmcgbW9yZSB0aGFuIHRoZSBGVyBqb2IgbGlt
aXQpIGlzIHJhcmUNCj4gYnV0IGhhbmRsaW5nIGl0IGlzIG5lY2Vzc2FyeSwgc2luY2Ugb3RoZXJ3
aXNlIHRoZSBlbnRpcmUgam9iDQo+IGNvbXBsZXRpb24vdHJhY2tpbmcgbG9naWMgZ2V0cyBzY3Jl
d2VkIHVwIG9uIHRoZSBmaXJtd2FyZSBlbmQgYW5kIHF1ZXVlcw0KPiBlbmQgdXAgc3R1Y2sgKEkn
dmUgbWFuYWdlZCB0byB0cmlnZ2VyIHRoaXMgYmVmb3JlKS4NCg0KQWN0dWFsbHkgdGhhdCdzIGEg
cHJldHR5IG5vcm1hbCB1c2UgY2FzZS4gSSd2ZSBoYXZlIHJlamVjdGVkIHNpbWlsYXIgDQpyZXF1
aXJlbWVudHMgbGlrZSB0aGlzIGJlZm9yZSBhcyB3ZWxsLg0KDQpGb3IgYW4gZXhhbXBsZSBob3cg
dGhpcyBjYW4gd29yayBzZWUgYW1kZ3B1X2pvYl9wcmVwYXJlX2pvYigpOiANCmh0dHBzOi8vZWxp
eGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjMtcmMxL3NvdXJjZS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfam9iLmMjTDI1MQ0KDQpUaGUgZ2FuZyBzdWJtaXQgZ2l2ZXMgYW5kIGV4
YW1wbGUgb2YgYSBnbG9iYWwgZmVuY2UgbG9jayBhbmQgdGhlIFZNSURzIA0KYXJlIGFuIGV4YW1w
bGUgb2YgYSBnbG9iYWwgc2hhcmVkIGZpcm13YXJlIHJlc291cmNlLg0KDQpSZWdhcmRzLA0KQ2hy
aXN0aWFuLg0KDQo+DQo+IH5+IExpbmENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
