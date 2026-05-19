Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qELWNCgPDGoZVQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 09:20:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6D2578E80
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 09:20:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 926E340961
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 07:20:06 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010014.outbound.protection.outlook.com [40.93.198.14])
	by lists.linaro.org (Postfix) with ESMTPS id 3112A406A1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 07:19:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=o4o+Dfrr;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.198.14 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gaufHFBZAHVSI/VBShSBeOlGIUVwMMT9kpMMv27PMvlizc4QLLFsqFoJtlMeBp+drjZUzM67bmeaYBhLYISAzGamdpc24EgZzyrJI/8NcpPtjb9lusVNHrZLfWCThCI7qCf4RZ1I9o9G4QhdiZpautUg/G+jRrUkHsIyyQva/UXDHRB1a6wl45gA+V/twcOcWcYApnkOpDdRnq61UFweS42DHkEdMGKMbLwZpRpxh3kUi/ku9d5TAI1E3y8yHrV63//YdeGTqQbSfntW9jnm4tZRa9Uv858k69QrROO0XB7wzOsPz1m52O8xlkeMx+OM5PdnP6MHfx5QEhzi/Udrdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tToTDeZ2zH40MRA2cGhy3MJjH7UDbtc/xCc9lAoPtb8=;
 b=WmGVujBJGade125jNVwoX6GLNGdxsSi4N+ZDEI4e5B5cNBH40r0mSc1ER7Fr1nOrm+0BLgsbPUi2SsfZtossPhL11Hp1s+j79iSzLkFmFIHFOrbAxvJEmbfQhG7qiq2wXXNUxYXkmaq73eoUd8/fpjPQ2WMf+9bEJhYakq0Higez3B8TL/5l7tg5vzAfTW9WkF9k6UqmB81+NZXO4mZ8yZbYi2fARjr5xHz3SZ6EdnRjUT8Dm+DI/JXdKzXL9gCgrMrIDOELI+YoYNZjsrI3NLzw8v4gAyvH936Nbw1QojwLuYPAaC/25M4d86e0ZNg8QuZCFeLTxFNvlkmAVLQQ3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tToTDeZ2zH40MRA2cGhy3MJjH7UDbtc/xCc9lAoPtb8=;
 b=o4o+Dfrrp2PpwAa9dqIVZUzhLkHOT3W/xw9jMm0Vu9waFJREy0SO20gX/XWkC2bgRys2H6b6J8FA2fUR9NmpX9K87IrU4WUHCbirhdUFgVkd+2IMOJJi51wqB+wHX8FmiMu2hyPrv3MucCShijUn+wS5dwvUW2AXycp/53FAoTQ=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB6439.namprd12.prod.outlook.com (2603:10b6:8:c9::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.25.24; Tue, 19 May 2026 07:19:51 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Tue, 19 May 2026
 07:19:51 +0000
Message-ID: <01b6eefc-c107-4f8c-9d7c-3b86f54cabaa@amd.com>
Date: Tue, 19 May 2026 09:19:42 +0200
User-Agent: Mozilla Thunderbird
To: "T.J. Mercier" <tjmercier@google.com>
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <20260515-hinschauen-effizient-9e3a05a94f2e@brauner>
 <CABdmKX0d6Zsg+_TxXjB80UZR23ZvXzxYoWzORgwmx=ZiuE+Nzw@mail.gmail.com>
 <208fb820-d8eb-4832-a343-ef8b360e8120@amd.com>
 <CADSE00Lh95ygoXGKJGsYvQGEsFV8sVmwEC3uvh8M6r3ERzaJwg@mail.gmail.com>
 <88efe10a-8b93-4a81-8279-4a5559d0f17c@amd.com>
 <CABdmKX3yZubjDKbVqwrjHAiKyj_ioHzOoxd0wzFbJK=PAGOqcQ@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABdmKX3yZubjDKbVqwrjHAiKyj_ioHzOoxd0wzFbJK=PAGOqcQ@mail.gmail.com>
X-ClientProxiedBy: FR2P281CA0127.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB6439:EE_
X-MS-Office365-Filtering-Correlation-Id: 79b325b6-71f2-40fc-25d1-08deb577044a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|7416014|22082099003|18002099003|56012099003|4143699003|11063799003;
X-Microsoft-Antispam-Message-Info: 
	mLUr2v38XyeinR7+AM0mNNIaHEsJJMGTMxmOVFouuHDR5XuSIIdC0fsvDF+oDXznz/mfFBjAUVSIfYOAKTd2VvMpxTjxU1OND6EUQmjZt1pMbHjVZnNVi3V3NdZqoyxWzwt/upkNWtM6bd5Ax/mau+KUvuSm98kq9tk5y9nZiHLXcI5hGA+78iR6vEI4Rl0ZWhZ7tLG0ZMx8WKuNywFPG8c9nACDpk20mQzbd85tiCSRUumOj0ZuThij48KwJHu2DBuKpnxYaXxRHxt1tBr0unCn0Tp+/Gt0AwuaVximnQ5qsM3w9IhnqMeizEdLyQ168wl8eEAJ7P69k1Ue0Hg1VKJiRClZ0M2YjANdMdTlYaoHneqrqdo0b1/Hkp6ftuM3P3A7Ln5yFJ/ySEURHtye0sAcxPrs6nVvpX9XBs3vrje07Sp516r8UGv0ZL/JxHopUP0+CuUganBwH2ltMSYWktGWMVjXGEMKWPh1PXV8/YK3Gpome8iPZ5ZZIPP8/mv6jbeWVMmzwpHneDu1s3Cl3y/GwrU41DdqDZB61tEr7mtlttwefzrR7shoJbABu7S/eoiFRd/Vm89ynA76Zqk4bsXnYpYrBhu9PDi/wTx+PK5P0JXlWf5NLyxBfZano82NG1OQ//1/nJPgbkwDUGMdlznfrZeyyw5tRzNdfXoGQiR2ZTCKdhrd3LZ+B+avGStD
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(56012099003)(4143699003)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MXc3bjJMK3F1QW0zdHRJc0Z4U0t2K0tFa3JkTWxVenVnYjRLRzNBRXpSTXhl?=
 =?utf-8?B?Mng4c0duVmYvZmluemtUU2wzOEdFN1YxL0FtZEE2NmZEd0hvanBrSG5QVHNv?=
 =?utf-8?B?MFBqVHF5SFZKMXpaa1pOYkJuellFc2tKQXB6QnNMYm5FSWNNTkNBK1VYSXB2?=
 =?utf-8?B?TGUvbmRQMEVOaTBHZWtabnM2REs4VDhxWGcxZnNVWmc3bTBsaVZKSTJ5Ymlh?=
 =?utf-8?B?SjlCMjJNb3RldlZEREtldGJXUDYrdTFHbk8yUXlENHJoaVREV2VyZkJIVUZy?=
 =?utf-8?B?VlNUSVMveEp2WUlvR1AxV3ZGQTJqZTRNZEhpNkVJZ01PWmcxSzRWLzkwVEIw?=
 =?utf-8?B?a1pjbmFOVXJ2S1poOHRKWGxqWGJUSmllN1dsR2U5S2lxTUxZaVRGcEFWV1o5?=
 =?utf-8?B?enRINytxLzliaEswakR3am9FOXY5clp4TUtlN0ZMNzN1YWc1dlU0Mm1DSlU5?=
 =?utf-8?B?d0w5ckRUZGxwbDkzQ1ZiZFEvL0ZSNG4vV3ZhM1p4T1Z0OU4zRnBTTHNCaG54?=
 =?utf-8?B?UkwzSndRWWtzMWtzU1BzSy84TnVuT0pCRXU5Rjl5dk9xY0FvTkZIUmhzTnlv?=
 =?utf-8?B?dHNXQitwMzNrZXI3ZE1adkNRcnYvNFNpMDI5c2F6aTc1REJGQUlDaGF0TTg1?=
 =?utf-8?B?akcwSVh6R0NBVHljTkVYazhnUTIyK3E3VlZoeldMTUFuM0lQWDVpUlROWDB4?=
 =?utf-8?B?dVFVUEZLZGtKdkxCWFo3OHI0bWMrVXlBMlVQdUJaanV3eFNBVDFVdEpSeTc0?=
 =?utf-8?B?YUprL3VZeTZ5Y1hnd09tT3VnVExTZ2JvZHFzNDVVaFl6YnMxclRzR21uLzh6?=
 =?utf-8?B?VjZ6ZWhwRmdSNXFRWEllRG5NRGdtd0RKNHJBNTdCTlRrY29mMGU1ZWprQVVD?=
 =?utf-8?B?Z0ZBVlhZbndEQzNCbHhJejlBRVhiWHFPSzFJN3FHY2QvVVFGS1dBSDZyRnVS?=
 =?utf-8?B?VXBFekVPM2E2amVDZ0JwbzlzWUtSTFJMK01yN2RNeFBaU1V3OGlrVElVei93?=
 =?utf-8?B?YzgwVVJwc2VEQ2VOazhEVEd2MW5LekNEN1pWQUJnOE1BNFdmc1J4UWZBUVZT?=
 =?utf-8?B?aHUrRFE4VXJFYzR5VEJ2SW5NTUZzSlFNV3lTRVNGMitybCtuYU5UQ2NzSDJP?=
 =?utf-8?B?OTMvVFZJRTBZOVlFZmQ1SXJaTTljS0JGQ3JVSXhYM1FzdlcyM2ErWFpDTS93?=
 =?utf-8?B?T3RsWkFKSXQ2alQ3L1Vtb2FBbUJBMmpCbFBQeGxhdDE1bjNNdk1WOUVKZ1VS?=
 =?utf-8?B?Y2wzWUhrUFd2cC9EcGNkaXcyekNpTmdpYUFkMXNJOGlmRU5mQk80Mk9KZ1R0?=
 =?utf-8?B?dmY4N3hzdHJmcDJSODc3NUFFaXhzNnlsNzJjZHB6QWFNTnRKSmVRKzQ1MTFX?=
 =?utf-8?B?NDdXdUtQMEVJQ091YTEyZnNFRWFiOXRMQmhWNVhLNjdTWHhCd3RGUytqSHFt?=
 =?utf-8?B?WGNPcFVFSWU5akxEUnBvRk9JY0dZcmg4VGJUN2ZHSjlUWFRpdkxNK0R0VlBF?=
 =?utf-8?B?OTdHaHVJMHkyL21xNnVLdHNQTDNVT3NYRjVyeDRFR3lFUS8wZDhZSmhsY3pq?=
 =?utf-8?B?Z2ZNNnBnL1p0WVFEZUowSUxEWDhFejJQYkRGNFd1dFA4S0xtRUM0RUd0ZC9Z?=
 =?utf-8?B?YTJERjF1UlVaWHYzNUVsU3FRbnF0Wjdia0lMOWFSckMvWkV4NmVTbGMzc01S?=
 =?utf-8?B?amlXQTZJVEZBM1U5dTdnSHFFaG9QR1p6MVMwdURmZStxVzJHVkJzam5teWUx?=
 =?utf-8?B?Z3oxeFNEY0ZGREF6V0I1ZEJFeXdEclJsSDhFKzcwQ2pzUXFwRTNmMmE2eDZn?=
 =?utf-8?B?MVJkR29IV29LSndGNEgrU0VFR3N4a3MwbHgxRENKZVdVbXdCNjUzS1l4WE9D?=
 =?utf-8?B?VTNpbzJuRmdMN2pmWjRGOGRyclZDak5PdHd4K2ZBUy9EOVZlalkyNlRkZ2Nl?=
 =?utf-8?B?bWx3RzVGYXJJekh1bzgyRVpxWVQ0V3ZrOFNIZFpWUWIxeWlHU28rNXprcmlI?=
 =?utf-8?B?eWtLNWhoQ3dZT0dNaXhTSUMxaFl0ZVB1VllZY2FiNGY1dHNZWFhDZjh6Snh0?=
 =?utf-8?B?T2pkcE9jYzJwSW9OWVZMbFY0STRZVjNsOXdkbkFYb1lDSHI0azE4cTN2dXJI?=
 =?utf-8?B?RkhKNUxoUnJ0MU4xd1J3YjczMFNJdXJMbDVBMjM2K1JKZXVGUDRpRnZrTzdi?=
 =?utf-8?B?QjNQeW5lSks5MGtzK0orM2ZXNnNkVnl1VHRFWE1pcWoydjEySjg4S0E5Z0pl?=
 =?utf-8?B?b2YyY3d1Z3ByRGlHdWliRVJuU1JjQnNsa0psb1BwQUxET2xqUGprc3BwSm5r?=
 =?utf-8?Q?KglzcuK24b/j83fFn0?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79b325b6-71f2-40fc-25d1-08deb577044a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 07:19:51.2634
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vjdyUJPUFOfj8iHsCcUFp9eHhhXekCHrPW5VnWQOS2jXhN2da880tFCuH8P7EgMi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6439
X-Spamd-Bar: --
Message-ID-Hash: H42OGNFIOZPM272L5INVLPRSU4PTJ3EZ
X-Message-ID-Hash: H42OGNFIOZPM272L5INVLPRSU4PTJ3EZ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Albert Esteve <aesteve@redhat.com>, Christian Brauner <brauner@kernel.org>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.o
 rg, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H42OGNFIOZPM272L5INVLPRSU4PTJ3EZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[redhat.com,kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,vger.kernel.org,lists.freedesktop.o,lists.linaro.org,kvack.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 4B6D2578E80
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8xOS8yNiAwMTozOSwgVC5KLiBNZXJjaWVyIHdyb3RlOg0KPiBPbiBNb24sIE1heSAxOCwg
MjAyNiBhdCA3OjA34oCvQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPiB3cm90ZToNCj4+DQo+PiBPbiA1LzE4LzI2IDE0OjUwLCBBbGJlcnQgRXN0ZXZlIHdy
b3RlOg0KPj4+IE9uIE1vbiwgTWF5IDE4LCAyMDI2IGF0IDk6MjDigK9BTSBDaHJpc3RpYW4gS8O2
bmlnDQo+Pj4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+Pj4+DQo+Pj4+IE9u
IDUvMTUvMjYgMTk6MDYsIFQuSi4gTWVyY2llciB3cm90ZToNCj4+Pj4+IE9uIEZyaSwgTWF5IDE1
LCAyMDI2IGF0IDY6NTPigK9BTSBDaHJpc3RpYW4gQnJhdW5lciA8YnJhdW5lckBrZXJuZWwub3Jn
PiB3cm90ZToNCj4+Pj4+Pg0KPj4+Pj4+IE9uIFR1ZSwgTWF5IDEyLCAyMDI2IGF0IDExOjEwOjQ0
QU0gKzAyMDAsIEFsYmVydCBFc3RldmUgd3JvdGU6DQo+Pj4+Pj4+IE9uIGVtYmVkZGVkIHBsYXRm
b3JtcyBhIGNlbnRyYWwgcHJvY2VzcyBvZnRlbiBhbGxvY2F0ZXMgZG1hLWJ1Zg0KPj4+Pj4+PiBt
ZW1vcnkgb24gYmVoYWxmIG9mIGNsaWVudCBhcHBsaWNhdGlvbnMuIFdpdGhvdXQgYSB3YXkgdG8N
Cj4+Pj4+Pj4gYXR0cmlidXRlIHRoZSBjaGFyZ2UgdG8gdGhlIHJlcXVlc3RpbmcgY2xpZW50J3Mg
Y2dyb3VwLCB0aGUNCj4+Pj4+Pj4gY29zdCBsYW5kcyBvbiB0aGUgYWxsb2NhdG9yLCBtYWtpbmcg
cGVyLWNncm91cCBtZW1vcnkgbGltaXRzDQo+Pj4+Pj4+IGluZWZmZWN0aXZlIGZvciB0aGUgYWN0
dWFsIGNvbnN1bWVycy4NCj4+Pj4+Pj4NCj4+Pj4+Pj4gQWRkIGNoYXJnZV9waWRfZmQgdG8gc3Ry
dWN0IGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YS4gV2hlbiBzZXQgdG8NCj4+Pj4+Pg0KPj4+Pj4+
IFBsZWFzZSBiZSBhd2FyZSB0aGF0IHBpZGZkcyBjb21lIGluIHR3byBmbGF2b3JzOg0KPj4+Pj4+
DQo+Pj4+Pj4gdGhyZWFkLWdyb3VwIHBpZGZkcyBhbmQgdGhyZWFkLXNwZWNpZmljIHBpZGZkcy4g
TWFrZSBzdXJlIHRoYXQgeW91ciBBUEkNCj4+Pj4+PiBkb2Vzbid0IGltcGxpY2l0bHkgZGVwZW5k
IG9uIHRoaXMgZGlzdGluY3Rpb24gbm90IGV4aXN0aW5nLg0KPj4+Pj4NCj4+Pj4+IEhpIENocmlz
dGlhbiwNCj4+Pj4+DQo+Pj4+PiBNZW1jZyBpcyBub3QgYSBjb250cm9sbGVyIHRoYXQgc3VwcG9y
dHMgInRocmVhZCBtb2RlIiBzbyBhbGwgdGhyZWFkcw0KPj4+Pj4gaW4gYSBncm91cCBzaG91bGQg
YmVsb25nIHRvIHRoZSBzYW1lIG1lbWNnLg0KPj4+Pg0KPj4+PiBCVFc6IEV4YWN0bHkgdGhhdCBp
cyB0aGUgcmVxdWlyZW1lbnQgYXV0b21vdGl2ZSBoYXMgd2l0aCB0aGVpciBuYXRpdmUgY29udGV4
dCB1c2UgY2FzZS4NCj4+Pj4NCj4+Pj4gVGhlIHVzZSBjYXNlIGlzIHRoYXQgeW91IGhhdmUgYSBk
ZWFtb24gd2hpY2ggaGFzIG11bHRpcGxlIHRocmVhZHMgd2VyZSBlYWNoIG9uZSBpcyBhY3Rpbmcg
b24gYmVoYWx2ZSBvZiBzb21lIG90aGVyIHByb2Nlc3MuDQo+Pj4+DQo+Pj4+IEF0IHRoZSBtb21l
bnQgd2UgYmFzaWNhbGx5IHNheSB0aGV5IGFyZSBzaW1wbHkgbm90IHVzaW5nIGNncm91cHMgZm9y
IHRoYXQgdXNlIGNhc2UsIGJ1dCBpdCB3b3VsZCBiZSByZWFsbHkgbmljZSBpZiB3ZSBjb3VsZCBo
YW5kbGUgdGhhdCBhcyB3ZWxsLg0KPj4+Pg0KPj4+PiBTdW1tYXJpemluZyB0aGUgcmVxdWlyZW1l
bnQgb2YgdGhhdCB1c2UgY2FzZTogWW91IG5lZWQgYSBkaWZmZXJlbnQgY2dyb3VwIGZvciBlYWNo
IHRocmVhZCBvZiBhIHByb2Nlc3MuDQo+Pj4NCj4+PiBIaSBDaHJpc3RpYW4sDQo+Pj4NCj4+PiBU
aGFua3MgZm9yIHNoYXJpbmcgdGhpcyBhdHVvbW90aXZlIHVzZWNhc2UuIElmIEkgdW5kZXJzdGFu
ZCBjb3JyZWN0bHksDQo+Pj4gdGhlIGFjdHVhbCByZXF1aXJlbWVudCBpcyBhdHRyaWJ1dGluZyBk
bWEtYnVmIGNoYXJnZXMgdG8gdGhlIHJpZ2h0DQo+Pj4gY2xpZW50LCBub3QgcHV0dGluZyBlYWNo
IGRhZW1vbiB0aHJlYWQgaW4gYSBkaWZmZXJlbnQgY2dyb3VwPw0KPj4NCj4+IE5vcGUsIGV4YWN0
bHkgdGhhdCdzIHRoZSBkaWZmZXJlbmNlLg0KPj4NCj4+IFRoZSB0aHJlYWQgYWN0cyBhcyBhIGZp
bHRlcmluZyBhZ2VudCBmb3IgYm90aCBtZW1vcnkgYWxsb2NhdGlvbiBhbmQgY29tbWFuZCBzdWJt
aXNzaW9uIGZvciBzb21lYm9keSBlbHNlLCB0aGUgcHJvY2VzcyBvbiB3aGljaCBiZWhhbHZlIHRo
ZSBkYWVtb24gZG9lcyB0aGluZ3MgY2FuIGV2ZW4gYmUgaW4gYSBjbGllbnQgVk0sIGNvbXBsZXRl
bHkgcmVtb3RlIG92ZXIgc29tZSBuZXR3b3JrIG9yIGV2ZW4gc29tZXRoaW5nIGxpa2UgYSBtaWNy
b2NvbnRyb2xsZXIuDQo+Pg0KPj4gRXZlcnl0aGluZyB0aGUgdGhyZWFkIGRvZXMgcmVnYXJkaW5n
IENQVSB0aW1lLCBHUFUgZHJpdmVyIG1lbW9yeSBhbGxvY2F0aW9uIGFzIHdlbGwgYXMgcmVzb3Vy
Y2VzIGxpa2UgR1BVIHByb2Nlc3NpbmcgYW5kIEkvTyB0aW1lIGV0Yy4uIG5lZWRzIHRvIGJlIGFj
Y291bnRlZCB0byBvbmUgY2xpZW50IHdoaWNoIGNhbiBiZSBkaWZmZXJlbnQgZm9yIGVhY2ggdGhy
ZWFkIG9mIHRoZSBwcm9jZXNzLg0KPj4NCj4+IFRoZSBvbmx5IHRoaW5nIHdoaWNoIGlzIHNoYXJl
ZCB3aXRoIHRoZSBtYWluIHByb2Nlc3MgdGhyZWFkIGlzIENQVSBtZW1vcnkgcmVzb3VyY2VzLCBl
LmcuIG1hbGxvYygpIGJlY2F1c2UgdGhhdCBpcyBiYXNpY2FsbHkganVzdCBuZWVkZWQgZm9yIGhv
dXNla2VlcGluZyBhbmQgcHJldHR5IG11Y2ggaXJyZWxldmFudCBmb3IgdGhpcyBraW5kIG9mIHVz
ZSBjYXNlLg0KPj4NCj4+IFRoZSBwcm9ibGVtIGlzIG5vdyB5b3UgY2FuJ3QgZG8gdGhhdCB3aXRo
IGNncm91cHMgYXQgdGhlIG1vbWVudCBidXQgdW5mb3J0dW5hdGVseSBvbmx5IHRoZSBrZXJuZWwg
aGFzIHRoZSBpbmZvcm1hdGlvbiB5b3UgbmVlZCB0byBrbm93IHRvIGRvIHRoaXMuDQo+Pg0KPj4g
U28gd2hhdCB5b3UgZW5kIHVwIHdpdGggaXMgdG8gZGVmaW5lIHRvbnMgb2YgaW50ZXJmYWNlcyBq
dXN0IHRvIGdldCB0aGUgbmVjZXNzYXJ5IGluZm9ybWF0aW9uIGZyb20gdGhlIGtlcm5lbCBpbnRv
IHVzZXJzcGFjZSBhbmQgdGhlbiBlc3NlbnRpYWxseSBkdXBsaWNhdGUgdGhlIHNhbWUgaW5mcmFz
dHJ1Y3R1cmUgY2dyb3VwIHByb3ZpZGVzIGluIHRoZSBrZXJuZWwgaW4gdXNlcnNwYWNlIGFnYWlu
Lg0KPj4NCj4+PiBJZiBzbywNCj4+PiB0aGUgYGNoYXJnZV9waWRfZmRgIGFwcHJvYWNoIGFjaGll
dmVzIHRoaXMgZGlyZWN0bHkgYnkgcGFzc2luZyB0aGUNCj4+PiBjbGllbnQncyBgcGlkX2ZkYCwg
d2l0aG91dCBuZWVkaW5nIHRvIGFkZCBwZXItdGhyZWFkIGNncm91cA0KPj4+IGluZnJhc3RydWN0
dXJlLg0KPj4NCj4+IFdlbGwgaXQncyBhbHJlYWR5IGEgbWFzc2l2ZSBpbXByb3ZlbXQsIHdlIGNv
dWxkIGJhc2ljYWxseSBzdG9wIGRvaW5nIHRoZSB3aG9sZSBkdXBsaWNhdGlvbiBwYXJ0IGZvciB0
aGUgR1BVIGRyaXZlciBzdGFjayBhbmQganVzdCB1c2UgY2dyb3VwcyBmb3IgdGhpcyBwYXJ0Lg0K
Pj4NCj4+IERvaW5nIHRoYXQgYXV0b21hdGljYWxseSBmb3IgQ1BVIGFuZCBJL08gdGltZSB3b3Vs
ZCBqdXN0IGJlIG5pY2UgdG8gaGF2ZSBhZGRpdGlvbmFsbHkuDQo+Pg0KPj4gUmVnYXJkcywNCj4+
IENocmlzdGlhbi4NCj4gDQo+IEhvcGVmdWxseSBJJ20gZm9sbG93aW5nIGNvcnJlY3RseSBoZXJl
Li4uLiBTbyB5b3UgYXJlIGR1cGxpY2F0aW5nIHRoZQ0KPiBHUFUgZHJpdmVyIHN0YWNrIHRvIGFj
aGlldmUgcmVtb3RlIGFjY291bnRpbmcgb24gYSBwZXItdGhyZWFkIGJhc2lzPw0KDQpOb3QgcXVp
dGUsIHdlIGFyZSBkdXBsaWNhdGluZyB0aGUgaGFuZGxpbmcgY2dyb3VwIHByb3ZpZGVzIGluIHRo
ZSBrZXJuZWwgaW4gdXNlcnNwYWNlLg0KDQpGb3IgdGhpcyBtZW1vcnkgdXNhZ2UgaW5mb3JtYXRp
b24gYXMgd2VsbCBhcyBleGVjdXRpb24gdGltZXMgb2YgdGhlIEdQVSBrZXJuZWwgZHJpdmVyIGlz
IGV4cG9zZWQgaW4gZmRpbmZvIGZvciBleGFtcGxlLg0KDQo+IERvZXMgdGhpcyBtZWFuIGZvciBH
UFUgYWxsb2NhdGlvbnMgeW91IGN1cnJlbnRseSBoYXZlIHNvbWUgR0ZQX0FDQ09VTlQNCj4gbWFn
aWMgaW4geW91ciBkcml2ZXIgdG8gYXR0cmlidXRlIEdQVSBtZW1vcnkgdG8gdGhlIGNvcnJlY3Qg
cmVtb3RlDQo+IGNsaWVudD8NCg0KTm8sIHdlIGp1c3QgZXhwb3NlIHdoYXQgdGhlIGtlcm5lbCBk
cml2ZXIgaGFzIGFsbG9jYXRlZCBmb3IgaXRzZWxmLiBFLmcuIHBhZ2UgdGFibGVzLCBidWZmZXJz
IGV0Yy4uLg0KDQpXaGVuIHVzZXJzcGFjZSBhbGxvY2F0ZXMgc29tZXRoaW5nIHVzaW5nIG1lbWZk
X2NyZWF0ZSgpIGZvciBleGFtcGxlIHdlIGp1c3QgaWdub3JlIHRoYXQuIA0KDQo+IFNvIHRoaXMg
c2VyaWVzIHdvdWxkIGNsb3NlIHRoZSBnYXAgZm9yIGRtYS1idWYgYWxsb2NhdGlvbnMsDQo+IGJ1
dCB3aGF0IGFib3V0IHByaXZhdGUgR1BVIGRyaXZlciBtZW1vcnkgYWxsb2NhdGVkIG9uIGJlaGFs
ZiBvZiBhDQo+IGNsaWVudD8NCg0KV2VsbCB3ZSB3b3VsZCBuZWVkIGEgY2dyb3VwIHdoaWNoIGlz
bid0IGFzc29jaWF0ZWQgd2l0aCBhbnkgcHJvY2VzcyB3ZXJlIHdlIGNvdWxkIGNoYXJnZSB0aGUg
R1BVIGRyaXZlciBhbGxvY2F0aW9ucyBhZ2FpbnN0Lg0KDQpCdXQgZ29vZCBwb2ludCwgY2hhcmdp
bmcgYWdhaW5zdCBhIHBpZCB3b3VsZG4ndCB3b3JrIGluIHRoaXMgdXNlIGNhc2UuDQoNClJlZ2Fy
ZHMsDQpDaHJpc3RpYW4uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
