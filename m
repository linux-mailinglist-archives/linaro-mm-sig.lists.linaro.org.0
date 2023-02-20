Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0151769C694
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 09:28:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B05D53F31A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 08:28:16 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2049.outbound.protection.outlook.com [40.107.94.49])
	by lists.linaro.org (Postfix) with ESMTPS id 031F93E826
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 08:27:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=zJE0wPdy;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.94.49 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eGpX8d+W9CiYkaIcxiCkNvq2ti52zXeSG9DqcP2Hgpzpxc9fh5ejXCNGdtuTq7wedWxdzvnRT7IH79ajzCf4lfA+UyXt7Phr/+r+VSM8X+snKqmqRcnbiDjUYfFoLydsAoWmSC+bB8liOBesxgZBUZo7P9KsTZBse9XXqcVYlrfbMyTzFXbA+9pA7mkUQTWU4h3IFD2gRvjVxYTvKPvLiq3v4T9gNmLxwZ5RaxlTCb7MvTjyxIB1eK0thfTNjiiCiWhUheQa9/mpE32XaS+27fdmT87tFed2mNtNOitPEW5iGjX7IAGruHfuWDzvvv6yslyx1rb2vwqQNcPjMEBBKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=La9te35KdvZ3bAXoBV3kbWsqFrt3+Nxi70SvEbfaYy4=;
 b=de9NaoV8NyhXbqD9gdCMqYj8eTm2b8PiFp+aWFr42sWl2twnLaqIyUB7G3qmexVKLo90jGq982vktyoBiMGvzM4VJpikQKUFHQVyhgdIFAWgsE+2EPEcM5i+VEW7k3k09sKB2fBEzBHTdXqJeumaPigNBGKi3l9kUgn5JgUtcTSAgNrIM8iBJtFdnF4TBzFBkoAAKilQ2TE9l6q10wtT1hZ8csgNpylcDGEqRrY/bLX6z8oCvjEcreFoHMxwYIArgHQYkQV2Jnkbs1kjr9H2jdasrBJOFLmo073ibfYg7h8ROPPbtjvuP88u1oqRoDbdf5oX8xBUoRo5ITdZXOve+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=La9te35KdvZ3bAXoBV3kbWsqFrt3+Nxi70SvEbfaYy4=;
 b=zJE0wPdy1ANp0Yst22Bpw71FZkWA1TQ3dWs1fueC/y0FtNQx/PdKhDClsh5LCGwUbMm+3VKAheEphXEH7d1f99UO1C3qlK8F+4aHaYJic5MmfijC/OW7SpJXlaC1m8leRw0STdBq0uktym+eZ/4z3zSwYHYuL9Qyk+nz6EmEMc0=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SA0PR12MB4495.namprd12.prod.outlook.com (2603:10b6:806:70::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.20; Mon, 20 Feb
 2023 08:27:55 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::2e4f:4041:28be:ba7a]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::2e4f:4041:28be:ba7a%6]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 08:27:55 +0000
Message-ID: <37ec0125-8d0b-7d87-321d-ed4c7c7b32a7@amd.com>
Date: Mon, 20 Feb 2023 09:27:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230218211608.1630586-1-robdclark@gmail.com>
 <20230218211608.1630586-6-robdclark@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20230218211608.1630586-6-robdclark@gmail.com>
X-ClientProxiedBy: FR2P281CA0150.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::11) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|SA0PR12MB4495:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ffbabe9-32a5-4619-4b30-08db131c5d38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	RtAFcl9i4O141V50LpxXhnQNCtBrQqjSeyv0EHOK9CvKntExvdPC8LZWUV7Y/6eu3ct59pTfEDye1stf4Ffmy6WzrFS8kWHMPj0xhJSlduUhS8CdsiNweNsYNME6U69m5/HNjs0xFV2wXEt9EIFPRaNPSXfZuik1z+Tq0VTRjeZefX18oGbcPGgXjLbHXW82H7CT5P9UNIPFHtlQmsCmWFRUno4xKkaz0w2OH/iA8dxvzPMlx8hzAVmBOIMX5b12EwGB0YiDCbGDyK4WHWnD3NB/A9j/R4Otcz0NLhpEEkS7HLU4hqLfD3RXpn4lVIplSk+D8bWK3NJPMVCu9N9Db56TVx0tQGmspVIVac1o17Ac9Vc3bDiaMaqA4qntXV0/n5SDC1AMAp2ooR8uej9ESd5RPMkU1WogIHH+GlgAMtNn/H3UwSViBdS28j6zZZMPWyQ2AdsqS4fdvcpAOUavy09TQQwH2j2VPUKivhD5hxvfSnSgXhUWTFOpOqbzbOJEu3Sf6yvFXXwmny31LYl+cvr4o2A9g2ErlOpIh8yLowAiTBPcn6WKy4Q/BUwASyS5QB3bEkjEgdOxIG5u1jtbuLWlx0sPc8E+sv65Ik0EO4fS9DxOa4vHNip0dxfqB3tXcIYxFrHohX27h6Bc+asP4q0OdLNIjm9lJCgjGmlVu2/CR0+wysd9KoDM59rUvNtC
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(136003)(366004)(376002)(396003)(346002)(451199018)(186003)(2906002)(6512007)(41300700001)(31686004)(6506007)(38100700002)(6666004)(7416002)(2616005)(5660300002)(8936002)(478600001)(316002)(966005)(6486002)(86362001)(66946007)(66556008)(66476007)(8676002)(4326008)(31696002)(66574015)(36756003)(83380400001)(54906003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?T0ZEVC9NT2UwN1ltU0ROeDhEeWM4d2pvenQxemY4NndMV0NlRkd0MndJTEw3?=
 =?utf-8?B?K1llNm1DeTZmc0NOdDRWU1ZlVHEvZ3gvYmhGdWl6eCtyak9TbTdzS2MwQ1kz?=
 =?utf-8?B?N01qRGpndWhSYld1eVlIb2tGUm9VWmlXMDBXS3RyWjhxNDF6VTR0UEVnYlNp?=
 =?utf-8?B?UFlqUE9mckZ3L3JYdlN2amdRanU2ZzlPR0pyREdiWjhyVU5TVzA0dGdZUlpX?=
 =?utf-8?B?QWF5MnBkeXdHT25CQStaZ00xaHBRemk3UlZhQ0YvSGhEQ3I2V3Rua3Z4bkNM?=
 =?utf-8?B?ZGFIVURyRG5iM2VFTXdlTGdSSTlBU0ZMSWFLVmloOG42NW1yWmc4bTB6czFU?=
 =?utf-8?B?VDJBa2RhaXhsS3hxeThTQk12Uzd0QmJHbGd2RTJTbUFueFMyQzBhMkZvckM1?=
 =?utf-8?B?QzlFYmErc3R6SFNaZmVRWHppTmt0ejZuVHNEV1RocHVQOGFmb1hOOWduYzlC?=
 =?utf-8?B?bytuc3hiTEJyTlEvZWZvQ3hQazV2Nk5UaytwemJTb0dUbFFpU0RKd2VsSm1V?=
 =?utf-8?B?VE9NQ2NidjFDK2IzU3FwOStaNXJNZkVhR1F0eGdGMUxOS3BWbVFBMDN5aXZK?=
 =?utf-8?B?UmQvSjhnek9MY3FOWnloT0JxeWJXd0JwMmppQzl6bUNCcWliSldUV1NHeTc1?=
 =?utf-8?B?cFZ1KzJjb2hsNzV5VEFka0pBUzMwQTNqYnY0Zi8rc2QvRnJkOFg2MWltWWk5?=
 =?utf-8?B?ek1qRVROeG9QMFl2KzExVTEwakhrOExJb0xtNy9DaEV2VCs0SithVkFvQnkv?=
 =?utf-8?B?YSt5b011eHBQSGN0VEZNWVBHa0dTSFdRMFZ2WlROSThiM2NlaEFJVmJma1Ja?=
 =?utf-8?B?VHBjcHFUWnpIbGMvVkl2QUNmV2xkbnI1TUJ2amR6dGcvQ0IxaEJjL2JFaWJJ?=
 =?utf-8?B?aW4xb0VmTEh4ZDMwZjZqYXc2VDZSdGFXbjlzVXpJMldaTDNmM2pIamk0dDZ2?=
 =?utf-8?B?NExEaHcwbjkvclUzR2FmcHdxbjlJRUc2eVhqTmIyeUZld1BxeVVJb1JVSjMv?=
 =?utf-8?B?ZVhqSiszVU1CSzZ2WEw3TjdYNG94NDdXSlVNdkdhK3lONnZzbWhGbEt5VEVS?=
 =?utf-8?B?RkJCOG1JNFo3TFRhaTVhZTdmaSs1K3dmelM1aU1LQXhYMWMzSk9TWlZGSVgv?=
 =?utf-8?B?RnpmNzNpeWIwTnpOSTRWQkhQbFkvS1lTUUZOZWI3dEJvWVJiMDBqeUVLSmdI?=
 =?utf-8?B?SHVJYk9vaVNYS3RudEJ3WWxkekYyMVQ3QXg0Ly95VUdwWjVlTUVBSUVJVXZh?=
 =?utf-8?B?NXUvU1pOaG9KSjh6NEdtdFc5Z1Uwdi9QY25qaUgwQ3pQSTVvWUpnb20vZlJV?=
 =?utf-8?B?NXB1bHFaTnZiWXNRSzN6ekRsL0RRcklKMkFla1UrTWtIWCtFemtLSFYvL0E0?=
 =?utf-8?B?blZLR3FNcHRuU2hNTkswaFdPZkh4Z3VtRnI4OFlXNU5XR3lWN0poMkZ6dXNM?=
 =?utf-8?B?VmtFUklYeGVZempRMGZHQUx1SVhhWjdxZ3o2dTJxQllFQWF6K2xXSm9oaHR1?=
 =?utf-8?B?d09zSXVHK0lLMUwrT3R5S2xZbTJTV1JCSlpyRGF0by91YzhRRm5EUG5jdExU?=
 =?utf-8?B?eWY4eUUwbzBXR3lrREhDbFI3MGY4RlRnUmtyUlRncks1eXZUMWpUTktxTERS?=
 =?utf-8?B?ZGd2bEd0bUZxNVdFbXRRUG80K0FaaTgwRnBuWG05TklJZFpEc21FV0wwZm9r?=
 =?utf-8?B?K1VPZFN4N2JJMTdDS2ZnT0hFQnlFSGJGeEdaOWc0aStkMmlQZW5qVHdFdWR5?=
 =?utf-8?B?QUtWMjU2QW5HMUF1WE0yd0tSVUw0c3pIc1BZdmVUMityTGhqTE56b1IxY1gv?=
 =?utf-8?B?WkpEZWxTZzlzcHFTZnJ5MGVsRVZiblR2azV4RWczWjI0NFcveFloaHEvOUFy?=
 =?utf-8?B?MUk3YVhhdUVVd2gwdlY2Zlc4aVJFNWxjc0xoMzA0M3JQeTV5UUtpcm1DZGFr?=
 =?utf-8?B?bnBxK3E0ZkhFZDNmdGtES2J4b2Y1aVZlZm5SYlZjM3ptV05ZSEp2aDArb2tr?=
 =?utf-8?B?NnJhWXNMUWJnTmZ5ZnJ3Qld5VEVyNDJweVRrMjQ3RjI3SzZBRENnS1YyZXdr?=
 =?utf-8?B?VTBzZVZDRDRqTHU3UW9Tcnd5ZmYvdTdUQ3hTZW0zb0hWTDVlQTZsSnJ5cG1L?=
 =?utf-8?B?YURZVkh3UDhGaG9DdlFJOFhDaVozN005cktuQVRac2RIRFR1UlNpaEplYllW?=
 =?utf-8?Q?HjfNAqvEGO+ESL4duNmGYayMPWwpHzdurdQJnUL9Idpo?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ffbabe9-32a5-4619-4b30-08db131c5d38
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 08:27:54.8914
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xNSiDsBtNdBeswBoyXxmR+fKFyhwZyb0yRHMYVNdg5aDFSLv9YsMYZryLNjwcLg2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4495
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 031F93E826
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.49:from];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: SC74VTMFTPLJLJJLG53STKIERX7NPSRU
X-Message-ID-Hash: SC74VTMFTPLJLJJLG53STKIERX7NPSRU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 05/14] dma-buf/sync_file: Add SET_DEADLINE ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SC74VTMFTPLJLJJLG53STKIERX7NPSRU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTguMDIuMjMgdW0gMjI6MTUgc2NocmllYiBSb2IgQ2xhcms6DQo+IEZyb206IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4NCj4gVGhlIGluaXRpYWwgcHVycG9zZSBpcyBm
b3IgaWd0IHRlc3RzLCBidXQgdGhpcyB3b3VsZCBhbHNvIGJlIHVzZWZ1bCBmb3INCj4gY29tcG9z
aXRvcnMgdGhhdCB3YWl0IHVudGlsIGNsb3NlIHRvIHZibGFuayBkZWFkbGluZSB0byBtYWtlIGRl
Y2lzaW9ucw0KPiBhYm91dCB3aGljaCBmcmFtZSB0byBzaG93Lg0KPg0KPiBUaGUgaWd0IHRlc3Rz
IGNhbiBiZSBmb3VuZCBhdDoNCj4NCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3Jv
YmNsYXJrL2lndC1ncHUtdG9vbHMvLS9jb21taXRzL2ZlbmNlLWRlYWRsaW5lDQo+DQo+IHYyOiBD
bGFyaWZ5IHRoZSB0aW1lYmFzZSwgYWRkIGxpbmsgdG8gaWd0IHRlc3RzDQo+DQo+IFNpZ25lZC1v
ZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4gLS0tDQo+ICAgZHJp
dmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jICAgIHwgMTkgKysrKysrKysrKysrKysrKysrKw0KPiAg
IGluY2x1ZGUvdWFwaS9saW51eC9zeW5jX2ZpbGUuaCB8IDIyICsrKysrKysrKysrKysrKysrKysr
KysNCj4gICAyIGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKykNCj4NCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2Zp
bGUuYw0KPiBpbmRleCBhZjU3Nzk5Yzg2Y2UuLmZiNmNhMTAzMjg4NSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5j
X2ZpbGUuYw0KPiBAQCAtMzUwLDYgKzM1MCwyMiBAQCBzdGF0aWMgbG9uZyBzeW5jX2ZpbGVfaW9j
dGxfZmVuY2VfaW5mbyhzdHJ1Y3Qgc3luY19maWxlICpzeW5jX2ZpbGUsDQo+ICAgCXJldHVybiBy
ZXQ7DQo+ICAgfQ0KPiAgIA0KPiArc3RhdGljIGludCBzeW5jX2ZpbGVfaW9jdGxfc2V0X2RlYWRs
aW5lKHN0cnVjdCBzeW5jX2ZpbGUgKnN5bmNfZmlsZSwNCj4gKwkJCQkJdW5zaWduZWQgbG9uZyBh
cmcpDQo+ICt7DQo+ICsJc3RydWN0IHN5bmNfc2V0X2RlYWRsaW5lIHRzOw0KPiArDQo+ICsJaWYg
KGNvcHlfZnJvbV91c2VyKCZ0cywgKHZvaWQgX191c2VyICopYXJnLCBzaXplb2YodHMpKSkNCj4g
KwkJcmV0dXJuIC1FRkFVTFQ7DQo+ICsNCj4gKwlpZiAodHMucGFkKQ0KPiArCQlyZXR1cm4gLUVJ
TlZBTDsNCj4gKw0KPiArCWRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3luY19maWxlLT5mZW5jZSwg
a3RpbWVfc2V0KHRzLnR2X3NlYywgdHMudHZfbnNlYykpOw0KPiArDQo+ICsJcmV0dXJuIDA7DQo+
ICt9DQo+ICsNCj4gICBzdGF0aWMgbG9uZyBzeW5jX2ZpbGVfaW9jdGwoc3RydWN0IGZpbGUgKmZp
bGUsIHVuc2lnbmVkIGludCBjbWQsDQo+ICAgCQkJICAgIHVuc2lnbmVkIGxvbmcgYXJnKQ0KPiAg
IHsNCj4gQEAgLTM2Miw2ICszNzgsOSBAQCBzdGF0aWMgbG9uZyBzeW5jX2ZpbGVfaW9jdGwoc3Ry
dWN0IGZpbGUgKmZpbGUsIHVuc2lnbmVkIGludCBjbWQsDQo+ICAgCWNhc2UgU1lOQ19JT0NfRklM
RV9JTkZPOg0KPiAgIAkJcmV0dXJuIHN5bmNfZmlsZV9pb2N0bF9mZW5jZV9pbmZvKHN5bmNfZmls
ZSwgYXJnKTsNCj4gICANCj4gKwljYXNlIFNZTkNfSU9DX1NFVF9ERUFETElORToNCj4gKwkJcmV0
dXJuIHN5bmNfZmlsZV9pb2N0bF9zZXRfZGVhZGxpbmUoc3luY19maWxlLCBhcmcpOw0KPiArDQo+
ICAgCWRlZmF1bHQ6DQo+ICAgCQlyZXR1cm4gLUVOT1RUWTsNCj4gICAJfQ0KPiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS91YXBpL2xpbnV4L3N5bmNfZmlsZS5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L3N5
bmNfZmlsZS5oDQo+IGluZGV4IGVlMmRjZmIzZDY2MC4uYzg2NjY1ODA4MTZmIDEwMDY0NA0KPiAt
LS0gYS9pbmNsdWRlL3VhcGkvbGludXgvc3luY19maWxlLmgNCj4gKysrIGIvaW5jbHVkZS91YXBp
L2xpbnV4L3N5bmNfZmlsZS5oDQo+IEBAIC02Nyw2ICs2NywyMCBAQCBzdHJ1Y3Qgc3luY19maWxl
X2luZm8gew0KPiAgIAlfX3U2NAlzeW5jX2ZlbmNlX2luZm87DQo+ICAgfTsNCj4gICANCj4gKy8q
Kg0KPiArICogc3RydWN0IHN5bmNfc2V0X2RlYWRsaW5lIC0gc2V0IGEgZGVhZGxpbmUgb24gYSBm
ZW5jZQ0KPiArICogQHR2X3NlYzoJc2Vjb25kcyBlbGFwc2VkIHNpbmNlIGVwb2NoDQo+ICsgKiBA
dHZfbnNlYzoJbmFub3NlY29uZHMgZWxhcHNlZCBzaW5jZSB0aGUgdGltZSBnaXZlbiBieSB0aGUg
dHZfc2VjDQo+ICsgKiBAcGFkOgltdXN0IGJlIHplcm8NCj4gKyAqDQo+ICsgKiBUaGUgdGltZWJh
c2UgZm9yIHRoZSBkZWFkbGluZSBpcyBDTE9DS19NT05PVE9OSUMgKHNhbWUgYXMgdmJsYW5rKQ0K
PiArICovDQo+ICtzdHJ1Y3Qgc3luY19zZXRfZGVhZGxpbmUgew0KPiArCV9fczY0CXR2X3NlYzsN
Cj4gKwlfX3MzMgl0dl9uc2VjOw0KPiArCV9fdTMyCXBhZDsNCg0KSUlSQyBzdHJ1Y3QgdGltZXNw
ZWMgZGVmaW5lZCB0aGlzIGFzIHRpbWVfdC9sb25nICh3aGljaCBpcyBob3JyaWJsZSBmb3IgDQph
biBVQVBJIGJlY2F1c2Ugb2YgdGhlIHNpemVvZihsb25nKSBkZXBlbmRlbmN5KSwgb25lIHBvc3Np
YmxlIA0KYWx0ZXJuYXRpdmUgaXMgdG8gdXNlIDY0Yml0IG5hbm9zZWNvbmRzIGZyb20gQ0xPQ0tf
TU9OT1RPTklDICh3aGljaCBpcyANCmVzc2VudGlhbGx5IGt0aW1lKS4NCg0KTm90IDEwMCUgc3Vy
ZSBpZiB0aGVyZSBpcyBhbnkgcHJlZmVyZW5jZXMgZG9jdW1lbnRlZCwgYnV0IEkgdGhpbmsgdGhl
IA0KbGF0ZXIgbWlnaHQgYmUgYmV0dGVyLg0KDQpFaXRoZXIgd2F5IHRoZSBwYXRjaCBpcyBBY2tl
ZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyANCjxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IGZvciB0
aGlzIHBhdGNoLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+ICt9Ow0KPiArDQo+ICAgI2Rl
ZmluZSBTWU5DX0lPQ19NQUdJQwkJJz4nDQo+ICAgDQo+ICAgLyoqDQo+IEBAIC05NSw0ICsxMDks
MTIgQEAgc3RydWN0IHN5bmNfZmlsZV9pbmZvIHsNCj4gICAgKi8NCj4gICAjZGVmaW5lIFNZTkNf
SU9DX0ZJTEVfSU5GTwlfSU9XUihTWU5DX0lPQ19NQUdJQywgNCwgc3RydWN0IHN5bmNfZmlsZV9p
bmZvKQ0KPiAgIA0KPiArDQo+ICsvKioNCj4gKyAqIERPQzogU1lOQ19JT0NfU0VUX0RFQURMSU5F
IC0gc2V0IGEgZGVhZGxpbmUgb24gYSBmZW5jZQ0KPiArICoNCj4gKyAqIEFsbG93cyB1c2Vyc3Bh
Y2UgdG8gc2V0IGEgZGVhZGxpbmUgb24gYSBmZW5jZSwgc2VlIGRtYV9mZW5jZV9zZXRfZGVhZGxp
bmUoKQ0KPiArICovDQo+ICsjZGVmaW5lIFNZTkNfSU9DX1NFVF9ERUFETElORQlfSU9XKFNZTkNf
SU9DX01BR0lDLCA1LCBzdHJ1Y3Qgc3luY19zZXRfZGVhZGxpbmUpDQo+ICsNCj4gICAjZW5kaWYg
LyogX1VBUElfTElOVVhfU1lOQ19IICovDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
