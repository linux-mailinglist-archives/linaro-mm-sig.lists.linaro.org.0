Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8866B09C0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 14:47:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD1EE3F0A8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 13:47:45 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2052.outbound.protection.outlook.com [40.107.95.52])
	by lists.linaro.org (Postfix) with ESMTPS id 163B53E960
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 13:47:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=AHJswzIy;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.95.52 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J0AhT4H+w+BgshT+klAzHeN3aAr/EwRNdSX9eNxqyuNVHZW1D4ExOVRCLTWTuHVix0lPLDW0ahmOqa18GxAzoCdH3WSaDiNcaf3z/hA17RMhQpkN5xZpkmspOp5A0nrBiI8wkd+N+gvWMm20mKjM87tD5TUKqFsQTVKEInpEDprwWLxPNtDEHIw5dmFx6sp2RC9+SE8YyErk98a4mjE1Ndty5VtYTiGINq1ItQNInLZ4v7P9PyBzAbUq7oW/tMU/HHb7Oj8CXX+wP9i5Cap+jC+7dozj/HNcaMxHTYWlEaXYvVyuTnhW4mMtnSNIGF2+sntf/sIuOtJtxEqS+qSiUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D7HnP3j19VflBcljtKq4SYq0pwNZ1M370lfgQa6Twvw=;
 b=m6L6LL0KaWC8PjL9GfsvZ8vI6G7hAhRvN4fvRj4FnVf3P0kdNW+pAOSM0H9AfPG60g3tKV9ty27NamJr4VvaWFGvbEUxPaxOBl78xNPd/qjQ+FUCepMkrhTzLfSpfXJxiTetUXfCjMI8B08WhD/LtAZyq6YIro5n717c4TD3l0gKAw8HJUXBYKB+uOmt+TAVeJiwsGhvVLX1dzXUHU2pjUO4ygdFF6jZKhj42b3B8pTIUzsqSLqofyGCX7T6QfCb+5mPLbcuBxyHfi0zl52H2ZJ/MnrcmZEiyMbtGRcOCmoRNuxQ/JW/P+nLNUvE/kSqpgV9pTN0PlAzw5uw/TYk7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D7HnP3j19VflBcljtKq4SYq0pwNZ1M370lfgQa6Twvw=;
 b=AHJswzIyhcaLz54VYz0BR7AsQFs3h7MYV2F03J3x6WHTKB4DWNBzFnRFegre72qxKLyDCUhZs8lZpcHEm4/3LKNUD4wJauq+XkmHryMjR0Ohw+/BTd4gDiCYJ/WvPAOM4upXgENeTmWw01jznYbSlF0Y8+S0vSKgLlkkiydRqvw=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MN2PR12MB4583.namprd12.prod.outlook.com (2603:10b6:208:26e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Wed, 8 Mar
 2023 13:47:23 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918%4]) with mapi id 15.20.6178.017; Wed, 8 Mar 2023
 13:47:23 +0000
Message-ID: <0d6cd23b-8c9e-067d-97ff-aa35dbbcf9bf@amd.com>
Date: Wed, 8 Mar 2023 14:47:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Karol Herbst <kherbst@redhat.com>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-10-917ff5bc80a8@asahilina.net>
 <cd788ccf-0cf1-85d5-1bf8-efc259bd7e11@amd.com>
 <CACO55tsnCMQt8UW5_UCY139kpZOdNXbMkBkFfUiB12jW5UgVmA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CACO55tsnCMQt8UW5_UCY139kpZOdNXbMkBkFfUiB12jW5UgVmA@mail.gmail.com>
X-ClientProxiedBy: FR3P281CA0177.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a0::14) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|MN2PR12MB4583:EE_
X-MS-Office365-Filtering-Correlation-Id: 02cc1c89-1ec6-425e-2a81-08db1fdba4fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JeG4sWDw/xT9TwPk9qvmvomUkVBLCk047JhT62n8p5i1SJ4uMpYp3kktXQGFAKOCxrbCzHOo/5XaVqmgVhLJI6ft7fenU7IAj6K5TlLC1ryeBnCzVUQSt/R2xcAbUcAQenqWgjVIdrYKV3mSCHNISDK4bX+Z6svVgf251qP5FlUwL7mIn+cLIdzcmMAI7hagV+e61wfJr88iJmBmtVyaX3UO48k8PD2NMIo6U3+3WC1cul4FwAUrZDFOvsfeD67PCPtjMFuctW0d25Gz4P3fHNZHstiLlgVi+HU/AsCNjioEtFbTEN0YsbW5GIEkKAtyFNOrf6dLN9HA6dWd8G8qQdcOwf0N73LFEaD6ui+3jq5ArpeOuX1d4GbuYLgWFmcUaA+vh0c6D618VKmrL0chYFIuM5SHV6GQg0xrCdUozZUpq20O7/dGPXHE2UWrFcYkKccdQbJqYtIWTlct6TSw+Zz15BaO1jc2S1YuVkNarZ4Q3JWepd6SVVLYNhT2I9+XTjImTmyK+bEMg6CbZtTKI3+Whi+fBQ6M0wsDZ1mv1anMYuOokHsh3LcaLrp8n2nhfNO905EvdZ9ZhjH0WQyaNkAdfyYJq2G588RuiLkDNTpPN5bCElx9cQWRAcQf30aGMa7NfqbtQNqgXivlUZrYTCONa+Im3RSinzOjzKWd8ELDyUQMHwZM52LlfxRPlNiFZiQ+XSayPafqHqphvp7hZTdAW3JCz5CnokYCyBLa4Lw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(376002)(396003)(39860400002)(136003)(346002)(451199018)(38100700002)(2906002)(186003)(6506007)(6512007)(53546011)(66899018)(2616005)(31686004)(6666004)(66476007)(966005)(8936002)(66946007)(478600001)(66556008)(6486002)(5660300002)(7416002)(41300700001)(31696002)(66574015)(54906003)(6916009)(4326008)(316002)(36756003)(8676002)(83380400001)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?N0k5VHVyZXNia2E0emJ2M3BEdHU2U0JmVE9mQkx1VnAxSUFCVzBhYWlJOXRy?=
 =?utf-8?B?MmkwR09keStpcHUzUzdaeDhFRjNmQTF2ejdGL2pSVGl4a1lySmxHMXMzRmVp?=
 =?utf-8?B?MGV4TFgxanVFSVBwUWN6T3QyQkF4eHdRUVVhRWNGcHlWYTQ2aWZFN08xbm9J?=
 =?utf-8?B?ampGNm93QVM3M2lQSUtocXJqdEU5YjdseW5ET2RNMzl3VS80eEh3WmZjeWhj?=
 =?utf-8?B?SU1YaTRDaEVTSXI3aFAvak9SUHRsR0t4d1lsMTlBa1J1UkJVRHZYLzRhK0dC?=
 =?utf-8?B?ZTBzK21zK2JtdElBaUJ1T0E4NmtyZGlZQmY0SjdFcnRsbE9vSWFSR1RvVWs3?=
 =?utf-8?B?dDFaMlhJNGZBYjVMMVRabktuNVFIdk10SDNiV0lqWVRTYVFZN2ZnQXQ3OVda?=
 =?utf-8?B?V3VGRDlOVWFWeklqVUdkL2ZtYVhpRHowWEJLc2pLVVVYUWNwT3RLejFBQnh1?=
 =?utf-8?B?Wk9EekdBYzFabFFxeExhMEp0OGxvRlJZUzNnTEZRUENEcEN1U3NaaXpEWjEv?=
 =?utf-8?B?OFRXNng1R0laRHd3KzRTZ0NzTXVWZ0pJb25xdHFyR1UxUENLODRyaGZnNmhP?=
 =?utf-8?B?Z0Fvb0J2WXhNYjZyVzlOYllORFVmU1FYY1RtWDJUeFRmUkFybXVIT21MdXNX?=
 =?utf-8?B?R1haaUNXdThIRHdPQVg0VGVSTjRRMllKaGRTL29tMklXOU5zeWU3Nkg1NGJE?=
 =?utf-8?B?QW5vUXdnaVR3UVY5ck5JWUt4V0hZRnBTd1NESWQwZkdRKzNIYVJ1Qk1veCtL?=
 =?utf-8?B?WkdLdklLb0JwNnNhOHJydVpRd2dyaWRiN3lYSWp4enVjWGlMZVZNNUZuc3ph?=
 =?utf-8?B?dVNMc21KK05DRm8rNStUWVlzcW5SdXE3MkZka0NlaVpScnpka0VhUWZvUktN?=
 =?utf-8?B?bUFOT0hLUFFRM3ZKUVd1bWh4N0RGY1crbnRMODN4Q2lBYWc3MFJ2Tk56dDRn?=
 =?utf-8?B?WVhnemFMSzFxT0s1a3BZdmVRV3l4SGkra05jeHRheGVIU1lLRWRtOU9BOWlI?=
 =?utf-8?B?aVBiOG95MFgySUhpdnd0Vm5zSnB2Vk9uWVpLK3JkZmhra2lHYTU1ekxudlRO?=
 =?utf-8?B?eUhzSEd6SGR1OVgrRUpIcDFTMEk1cUpIUW93UndBYzJHSHVTb1ZXVEJIWHJV?=
 =?utf-8?B?RDIxTUxiaksrRUx5MHJhYzBoYnhoTTdkTkg4V2pxUHB2dENWaENIVXRBTndC?=
 =?utf-8?B?eU9lYTZCeUpUSTdOZ2tSY3hHYjdZRFlkMUJXSUVYWkpPOGRwQmdNNERFZWRP?=
 =?utf-8?B?a2ZEdU9FZXlYYXg4UlY4NzNCbzZRQVNyeDNaaytiVS9xNTVzbXhKR29sSVIw?=
 =?utf-8?B?YkJCY3hKR1k2c3lKblczYVpIVG1nM2xneW9MMDFSZ0RWN0dIVm1GU29rZUNB?=
 =?utf-8?B?cDZIWHF1Y0p3dldQbld3VWNsOGZlbWpyY01hL2p1cWljMy9MbXFJVTZSajNQ?=
 =?utf-8?B?TENrbFpyY285ZHNQcUkyZnBMaEIydFdKa0lLNUhzSFIrT1o4THpoOStNL21h?=
 =?utf-8?B?aVNCbmdsMjJMbEZnbTArSFpVZGx0YlFjeEZTc0tQb3YwZm0vUnh1U2tzdmZi?=
 =?utf-8?B?YlJPTFkydmt6elpaaEhETVl3NjVaWVpjOVVMblJhQTZBQjFwNzB3aHMySkFo?=
 =?utf-8?B?QzRyMVBnMFpmTlozMWx0aHhzRUNPc1k0ZlhSS3lKZlZWVGpmWWJ2cUU1dVpO?=
 =?utf-8?B?ZGI5Ti81dEFjbnR2bmdtQjU1NGNweVNGSkhOWjVGSTVFazdhRzZhRE1zb2lz?=
 =?utf-8?B?ZFZnemh1U3YxWDZUTFNaN2svdXJENTNIaHA1ZElReTdWa2RSM2VmbU8zUjg2?=
 =?utf-8?B?TTBaMmpNNWxLMEI1Y0Ztc0RIZ0dFd3p3dEJCRUlNUkZYMktBSkZ4UUtCNE03?=
 =?utf-8?B?U0oxR3hZM2ZFcTRCSWd6V1h2VmhFRE1SQ2ppMWhyOXc3TUxaY2QwMnoxUUpU?=
 =?utf-8?B?aHJiK1lXdWZCSXNEZElTVUJYRm9JTmMvenBrNlI0U1FkcFVjSlV4TTZ4S1lz?=
 =?utf-8?B?MCtoKy9USUwrY2JSNTFXcnN0UzdqcU5UWlprUkJRYlk1ZlNCWC9FYkZXVW55?=
 =?utf-8?B?Tk96TGNUdHdxNWV1NGsvZFhjV3ZFZndhOWJhdjdvc0lKQkZvMURBQXVUZ1Fm?=
 =?utf-8?B?ZWRUUVY1QXpHekdJZjZiNi8zQnZFOTRkWVh1TEQ4S1Z0T2s3c0dxeVF2TUJY?=
 =?utf-8?Q?zMY2lEDchfAMkHE70Clu4ZDXyyTWRSuxrrbqavpgDl7S?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02cc1c89-1ec6-425e-2a81-08db1fdba4fa
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 13:47:23.0932
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YFc6Cqb4mFzjj/x5RDMYMR6HdtQaqAglI07Nm9FHhLnJMSc6fy5+rzW7riysLk5G
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4583
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 163B53E960
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.95.52:from]
Message-ID-Hash: B4S3TOJMJ4YH7JSEMCUZLG34UZH7ORT3
X-Message-ID-Hash: B4S3TOJMJ4YH7JSEMCUZLG34UZH7ORT3
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Asahi Lina <lina@asahilina.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B4S3TOJMJ4YH7JSEMCUZLG34UZH7ORT3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDguMDMuMjMgdW0gMTM6Mzkgc2NocmllYiBLYXJvbCBIZXJic3Q6DQo+IE9uIFdlZCwgTWFy
IDgsIDIwMjMgYXQgOTo0NuKAr0FNIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4gd3JvdGU6DQo+PiBBbSAwNy4wMy4yMyB1bSAxNToyNSBzY2hyaWViIEFzYWhpIExp
bmE6DQo+Pj4gU29tZSBoYXJkd2FyZSBtYXkgcmVxdWlyZSBtb3JlIGNvbXBsZXggcmVzb3VyY2Ug
dXRpbGl6YXRpb24gYWNjb3VudGluZw0KPj4+IHRoYW4gdGhlIHNpbXBsZSBqb2IgY291bnQgc3Vw
cG9ydGVkIGJ5IGRybV9zY2hlZCBpbnRlcm5hbGx5LiBBZGQgYQ0KPj4+IGNhbl9ydW5fam9iIGNh
bGxiYWNrIHRvIGFsbG93IGRyaXZlcnMgdG8gaW1wbGVtZW50IG1vcmUgbG9naWMgYmVmb3JlDQo+
Pj4gZGVjaWRpbmcgd2hldGhlciB0byBydW4gYSBHUFUgam9iLg0KPj4gV2VsbCBjb21wbGV0ZSBO
QUsuDQo+Pg0KPiBUaGVyZSBoYXNuJ3QgZXZlbiBiZWVuIGFueSBraW5kIG9mIGRpc2N1c3Npb24g
eWV0IHlvdSBhbHJlYWR5IGNvbWUNCj4gYXJvdW5kIHdpdGggYSAiV2VsbCBjb21wbGV0ZSBOQUsi
DQo+DQo+IEZpcnN0LCB0aGlzIGNhbiBiZSBzZWVuIGFzIHJ1ZGUgYmVoYXZpb3IgYW5kIG1lIGJl
aW5nIHBhcnQgb2YgdGhlIGRybQ0KPiBjb21tdW5pdHkgSSBkb24ndCB3YW50IHRvIGhhdmUgdG8g
c2VlIHRoaXMga2luZCBvZiB0aGluZy4NCj4NCj4gT2J2aW91c2x5LCBhbnkga2luZCBvZiBzdHJv
bmcgInRlY2huaWNhbCIgcmV2aWV3IHBvaW50IGlzIGEgbmFrIHVudGlsDQo+IHBlb3BsZSBzZXR0
bGUgd2l0aCBhbiBhZ3JlZW1lbnQgb24gd2hhdCB0byBsYW5kLCB0aGVyZSBpcyBubyBwb2ludCBp
bg0KPiBwb2ludGluZyBvdXQgYSAiTkFLIiwgZXNwZWNpYWxseSBpZiB0aGF0J3MgdGhlIGZpcnN0
IHRoaW5nIHlvdSBzYXkuIElmDQo+IHlvdSB3YW50IHRvIGV4cHJlc3MgeW91ciBzdHJvbmcgZGlz
YWdyZWVtZW50IHdpdGggdGhlIHByb3Bvc2VkDQo+IHNvbHV0aW9uLCB0aGVuIHN0YXRlIHdoYXQg
eW91ciBwYWluIHBvaW50cyBhcmUgZGlyZWN0bHkuDQo+DQo+IElmIHRoZXJlIGlzIGEgbG9uZyBk
aXNjdXNzaW9uIGFuZCBhIG1haW50YWluZXIgZmVlbHMgaXQncyBnb2luZw0KPiBub3doZXJlIGFu
ZCBubyBjb25jbHVzaW9uIHdpbGwgYmUgcmVhY2hlZCBpdCBtaWdodCBiZSB0aGlzIGtpbmQgb2YN
Cj4gInNwZWFraW5nIHdpdGggYXV0aG9yaXR5IiBwb2ludCBoYXMgdG8gYmUgbWFkZS4gQnV0IG5v
dCBhcyB0aGUgc3RhcnRlcg0KPiBpbnRvIGEgZGlzY3Vzc2lvbi4gVGhpcyBpcyB1bm5lY2Vzc2Fy
aWx5IGhvc3RpbGUgdG93YXJkcyB0aGUNCj4gY29udHJpYnV0b3IuIEFuZCBJIHdpc2hlZCB3ZSB3
b3VsZG4ndCBoYXZlIHRvIHNlZSB0aGlzIGtpbmQgb2YNCj4gYmVoYXZpb3IgaGVyZS4NCj4NCj4g
WWVzLCBzb21lIGtlcm5lbCBtYWludGFpbmVycyBkbyB0aGlzIGEgbG90LCBidXQga2VybmVsIG1h
aW50YWluZXJzDQo+IGFsc28gaGF2ZSB0aGlzIGtpbmQgb2YgcmVwdXRhdGlvbiBhbmQgcGVvcGxl
IGRvbid0IHdhbnQgdG8gaGF2ZSB0bw0KPiBkZWFsIHdpdGggdGhpcyBub25zZW5zZSBhbmQgZGVj
aWRlIHRvIG5vdCBjb250cmlidXRlIGF0IGFsbC4gU28gcGxlYXNlDQo+IGp1c3QgZHJvcCB0aGlz
IGF0dGl0dWRlLg0KDQpZZXMsIHlvdSBhcmUgY29tcGxldGVseSByaWdodCB3aXRoIHRoYXQsIGJ1
dCBnZXR0aW5nIHRoaXMgbWVzc2FnZSB0byB0aGUgDQpyZWNpcGllbnQgaXMgaW50ZW50aW9uYWwg
b24gbXkgc2lkZS4NCg0KSSBnaXZlIGNvbXBsZXRlbHkgTkFLcyB3aGVuIHRoZSBhdXRob3Igb2Yg
YSBwYXRjaCBoYXMgbWlzc2VkIHN1Y2ggYSANCmZ1bmRhbWVudGFsIHRlY2huaWNhbCBjb25uZWN0
aW9uIHRoYXQgZnVydGhlciBkaXNjdXNzaW9uIGRvZXNuJ3QgbWFrZSBzZW5zZS4NCg0KSXQncyBu
b3QgbWVhbnQgdG8gYmUgaW4gYW55IHdheSBydWRlIG9yIG9mZmVuZGluZy4gSSBjYW4gcHV0IGEg
c21pbGV5IA0KYmVoaW5kIGl0IGlmIGl0IHNvbWVob3cgaGVscHMsIGJ1dCB3ZSBzdGlsbCBuZWVk
IGEgd2F5IHRvIHJhaXNlIHRoaXMgYmlnIA0KcmVkIHN0b3Agc2lnbi4NCg0KPj4gVGhpcyBpcyBj
bGVhcmx5IGdvaW5nIGFnYWluc3QgdGhlIGlkZWEgb2YgaGF2aW5nIGpvYnMgb25seSBkZXBlbmQg
b24NCj4+IGZlbmNlcyBhbmQgbm90aGluZyBlbHNlIHdoaWNoIGlzIG1hbmRhdG9yeSBmb3IgY29y
cmVjdCBtZW1vcnkgbWFuYWdlbWVudC4NCj4+DQo+IEknbSBzdXJlIGl0J3MgYWxsIGRvY3VtZW50
ZWQgYW5kIHRoZXJlIGlzIGEgZGVzaWduIGRvY3VtZW50IG9uIGhvdw0KPiB0aGluZ3MgaGF2ZSB0
byBsb29rIGxpa2UgeW91IGNhbiBwb2ludCBvdXQ/IE1pZ2h0IGhlbHAgdG8gZ2V0IGEgYmV0dGVy
DQo+IHVuZGVyc3RhbmRpbmcgb24gaG93IHRoaW5ncyBzaG91bGQgYmUuDQoNClllYWgsIHRoYXQn
cyB0aGUgcHJvYmxlbWF0aWMgcGFydC4gV2UgaGF2ZSBkb2N1bWVudGVkIHRoaXMgdmVyeSANCmV4
dGVuc2l2ZWx5OiANCmh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUuOS9kcml2ZXIt
YXBpL2RtYS1idWYuaHRtbCNpbmRlZmluaXRlLWRtYS1mZW5jZXMNCg0KQW5kIGJvdGggSmFzb24g
YW5kIERhbmllbCBnYXZlIHRhbGtzIGFib3V0IHRoZSB1bmRlcmx5aW5nIHByb2JsZW0gYW5kIA0K
dHJ5IHRvIGNvbWUgdXAgd2l0aCBwYXRjaGVzIHRvIHJhaXNlIHdhcm5pbmdzIHdoZW4gdGhhdCBo
YXBwZW5zLCBidXQgDQpwZW9wbGUgc3RpbGwga2VlcCBjb21pbmcgdXAgd2l0aCB0aGUgc2FtZSBp
ZGVhIG92ZXIgYW5kIG92ZXIgYWdhaW4uDQoNCkl0J3MganVzdCB0aGF0IHRoZSB0ZWNobmljYWwg
cmVsYXRpb25zaGlwIGJldHdlZW4gcHJldmVudGluZyBqb2JzIGZyb20gDQpydW5uaW5nIGFuZCB3
aXRoIHRoYXQgcHJldmVudGluZyBkbWFfZmVuY2VzIGZyb20gc2lnbmFsaW5nIGFuZCB0aGUgY29y
ZSANCm1lbW9yeSBtYW5hZ2VtZW50IHdpdGggcGFnZSBmYXVsdHMgYW5kIHNocmlua2VycyB3YWl0
aW5nIGZvciB0aG9zZSANCmZlbmNlcyBpcyBhYnNvbHV0ZWx5IG5vdCBvYnZpb3VzLg0KDQpXZSBo
YWQgYXQgbGVhc3QgMTAgZGlmZmVyZW50IHRlYW1zIGZyb20gZGlmZmVyZW50IGNvbXBhbmllcyBm
YWxsaW5nIGludG8gDQp0aGUgc2FtZSB0cmFwIGFscmVhZHkgYW5kIGVpdGhlciB0aGUgcGF0Y2hl
cyB3ZXJlIHJlamVjdGVkIG9mIGhhbmQgb3IgDQpoYWQgdG8gcGFpbmZ1bGx5IHJldmVydGVkIG9y
IG1pdGlnYXRlZCBsYXRlciBvbi4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPj4gSWYg
dGhlIGh3IGlzIGJ1c3kgd2l0aCBzb21ldGhpbmcgeW91IG5lZWQgdG8gcmV0dXJuIHRoZSBmZW5j
ZSBmb3IgdGhpcw0KPj4gZnJvbSB0aGUgcHJlcGFyZV9qb2IgY2FsbGJhY2sgc28gdGhhdCB0aGUg
c2NoZWR1bGVyIGNhbiBiZSBub3RpZmllZCB3aGVuDQo+PiB0aGUgaHcgaXMgYXZhaWxhYmxlIGFn
YWluLg0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+IFNpZ25lZC1vZmYt
Ynk6IEFzYWhpIExpbmEgPGxpbmFAYXNhaGlsaW5hLm5ldD4NCj4+PiAtLS0NCj4+PiAgICBkcml2
ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyB8IDEwICsrKysrKysrKysNCj4+PiAg
ICBpbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmggICAgICAgICAgICB8ICA4ICsrKysrKysrDQo+
Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspDQo+Pj4NCj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgYi9kcml2ZXJzL2dw
dS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPj4+IGluZGV4IDRlNmFkNmUxMjJiYy4uNWMw
YWRkMmM3NTQ2IDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfbWFpbi5jDQo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWlu
LmMNCj4+PiBAQCAtMTAwMSw2ICsxMDAxLDE2IEBAIHN0YXRpYyBpbnQgZHJtX3NjaGVkX21haW4o
dm9pZCAqcGFyYW0pDQo+Pj4gICAgICAgICAgICAgICAgaWYgKCFlbnRpdHkpDQo+Pj4gICAgICAg
ICAgICAgICAgICAgICAgICBjb250aW51ZTsNCj4+Pg0KPj4+ICsgICAgICAgICAgICAgaWYgKHNj
aGVkLT5vcHMtPmNhbl9ydW5fam9iKSB7DQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIHNjaGVk
X2pvYiA9IHRvX2RybV9zY2hlZF9qb2Ioc3BzY19xdWV1ZV9wZWVrKCZlbnRpdHktPmpvYl9xdWV1
ZSkpOw0KPj4+ICsgICAgICAgICAgICAgICAgICAgICBpZiAoIXNjaGVkX2pvYikgew0KPj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBsZXRlX2FsbCgmZW50aXR5LT5lbnRpdHlf
aWRsZSk7DQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+Pj4g
KyAgICAgICAgICAgICAgICAgICAgIH0NCj4+PiArICAgICAgICAgICAgICAgICAgICAgaWYgKCFz
Y2hlZC0+b3BzLT5jYW5fcnVuX2pvYihzY2hlZF9qb2IpKQ0KPj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGNvbnRpbnVlOw0KPj4+ICsgICAgICAgICAgICAgfQ0KPj4+ICsNCj4+PiAg
ICAgICAgICAgICAgICBzY2hlZF9qb2IgPSBkcm1fc2NoZWRfZW50aXR5X3BvcF9qb2IoZW50aXR5
KTsNCj4+Pg0KPj4+ICAgICAgICAgICAgICAgIGlmICghc2NoZWRfam9iKSB7DQo+Pj4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaCBiL2luY2x1ZGUvZHJtL2dwdV9zY2hl
ZHVsZXIuaA0KPj4+IGluZGV4IDlkYjllNWU1MDRlZS4uYmQ4OWVhOTUwN2I5IDEwMDY0NA0KPj4+
IC0tLSBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KPj4+ICsrKyBiL2luY2x1ZGUvZHJt
L2dwdV9zY2hlZHVsZXIuaA0KPj4+IEBAIC0zOTYsNiArMzk2LDE0IEBAIHN0cnVjdCBkcm1fc2No
ZWRfYmFja2VuZF9vcHMgew0KPj4+ICAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICooKnByZXBhcmVf
am9iKShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqc2NoZWRfam9iLA0KPj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0eSAqc19lbnRp
dHkpOw0KPj4+DQo+Pj4gKyAgICAgLyoqDQo+Pj4gKyAgICAgICogQGNhbl9ydW5fam9iOiBDYWxs
ZWQgYmVmb3JlIGpvYiBleGVjdXRpb24gdG8gY2hlY2sgd2hldGhlciB0aGUNCj4+PiArICAgICAg
KiBoYXJkd2FyZSBpcyBmcmVlIGVub3VnaCB0byBydW4gdGhlIGpvYi4gIFRoaXMgY2FuIGJlIHVz
ZWQgdG8NCj4+PiArICAgICAgKiBpbXBsZW1lbnQgbW9yZSBjb21wbGV4IGhhcmR3YXJlIHJlc291
cmNlIHBvbGljaWVzIHRoYW4gdGhlDQo+Pj4gKyAgICAgICogaHdfc3VibWlzc2lvbiBsaW1pdC4N
Cj4+PiArICAgICAgKi8NCj4+PiArICAgICBib29sICgqY2FuX3J1bl9qb2IpKHN0cnVjdCBkcm1f
c2NoZWRfam9iICpzY2hlZF9qb2IpOw0KPj4+ICsNCj4+PiAgICAgICAgLyoqDQo+Pj4gICAgICAg
ICAgICAgKiBAcnVuX2pvYjogQ2FsbGVkIHRvIGV4ZWN1dGUgdGhlIGpvYiBvbmNlIGFsbCBvZiB0
aGUgZGVwZW5kZW5jaWVzDQo+Pj4gICAgICAgICAgICAgKiBoYXZlIGJlZW4gcmVzb2x2ZWQuICBU
aGlzIG1heSBiZSBjYWxsZWQgbXVsdGlwbGUgdGltZXMsIGlmDQo+Pj4NCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
