Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBxkCpQt62mBJgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 10:45:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F0E45BAB5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 10:45:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E75540476
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 08:45:06 +0000 (UTC)
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013060.outbound.protection.outlook.com [40.107.201.60])
	by lists.linaro.org (Postfix) with ESMTPS id 338E840476
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 08:45:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=HOKyeAJ3;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.201.60 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=td85LtW7QHoyx90Csh1TqGttoB0IYdDP1a5Gfj8BwKYBJx9X3E9Ck4hRQkJdIJpSwVFCn9N1N0Su1kOdZqlU3uaVacnsMdqwDlfpFNcBrxYuiTXoFPWmUaNDGzkFzA7kI5EoTfZh3sePo7fvBqVi2KOk/YW1AdQjbIri9QP5/vDBXfwWgf9lBvWckkPwPBoWJLYVQp+0thYOKxKp6SLLImsW+yeWBk4oW4HrlW/hlYxO2Xvid9Ptt0nZIz1ycQfWifj7sZhoGHDkdfE87F8lz3xbPnMD3gPo3xDd/hCrhMO/eBD9IhVT836/1gBEHSpyiOyt2PFwhHvN61m6ZGj4rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SChoTryJsEZYV02j3nArEHyA5zsLVzHXB83wg3XYmR8=;
 b=mCN2Y79piPyUa5SufD8bs2hJJAxigMBEt2MlWWkMMe4E/J3VTYVOj29w/MAt0oc08d+c3TDcXZswRy+mFPKECNA4Ab6S6ccItQeOa2zLadRgV8c+fpJzpTgxPaYf8pwASlyXOBjJnvfrWQVEtKaAhwrakIEHJ88AJbHiUURj3YEgf3hPz7L9hSQG9agVSJ7qN6a+DUwgHdgCePNHgbxUsE9DehhN1y/Bkpl4CbNQSwm/U1Tkx8Vx3lXMdxspG+1acg63YKZ/YYrWhVcia/BU+CU4uFuDbTEocl7+RvT8T6tu+gGtkjWjMgUSB/o+vwb/YLPQYWDZLqHVD5hgDIYUvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SChoTryJsEZYV02j3nArEHyA5zsLVzHXB83wg3XYmR8=;
 b=HOKyeAJ3WdyrOjNtxUZ4r5L5Zd/KtSz6kHPBFvnj3UOXOkXEuPn6LRwT6Mqlbyj2e9JsKTPraG7KSQDMH+H03LZhTEVuAOgHCs8MQepXBev+rm6MMH40Be3Ej17KBSJdsjKbjHE3Ojl8axXmyhaWcwbJBg9LPdS5X765jxxl03U=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV8PR12MB9644.namprd12.prod.outlook.com (2603:10b6:408:296::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.20; Fri, 24 Apr
 2026 08:44:58 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9846.021; Fri, 24 Apr 2026
 08:44:58 +0000
Message-ID: <60a6eabc-af5f-48ea-ac95-f9a5d780ba56@amd.com>
Date: Fri, 24 Apr 2026 10:44:43 +0200
User-Agent: Mozilla Thunderbird
To: Mukesh Kumar Chaurasiya <mkchauras@gmail.com>
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-3-mkchauras@gmail.com>
 <b4dcb464-7784-47e2-a973-6d731ab9ccf8@amd.com>
 <aeskOeb9uBiPptEJ@li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com>
 <a2241936-579f-4fa6-a9ec-49325d44413f@amd.com>
 <aesqe2NKWhkT4kc2@li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aesqe2NKWhkT4kc2@li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com>
X-ClientProxiedBy: BN9PR03CA0483.namprd03.prod.outlook.com
 (2603:10b6:408:130::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV8PR12MB9644:EE_
X-MS-Office365-Filtering-Correlation-Id: c1e8cf23-fc53-4730-6d02-08dea1ddc404
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|366016|376014|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	Byt7Bnw3mX5dl8uowRA3/EpMvSLTC5Tar7VRB4bVw35Pb5j1i9J9sVvVPvmVFitiW2YVfPta6qXFlMpkLFhtbcVMlQyzR7FPyL4c3LVLl1TRn3wwok8s/oHAT0rZwGOvv1pglSsVwYWInWMiya6P7gzwJ2T8WZNGj17yOX0isw/1nLWWR2F8mCF7Vi3gmKqtYHB3+H+416MM3YNsU8EOu1S+UoaTSYuJBnxTq/ygpUzL3KIcDJLdJjQ3Pil1RZbawY8o2p7qUqt5CodIwUP51S/+CHU8FaSzcxqyRk6JAbufTu7Q1wnaPOuf0oQ4N1uvzULDz1IcL2YJMm5Cru3gEZkEiOjWy2x3vZc6Ued5zzl1DT96mdvGgMyKPXPLufscbnSVblMlvhUauztwIWEHS636sICgHFxBGs5OW36Pr15QwZnPJ8gfNxfFIS6HfPPGMGx3CiDwhtT0W1hsQOHt14Qiv4N//bcU/LpiE+gvYj4zWLV7fBfHgmAF6yL+yOyksH8Wnxb1abrWGZy3mgGrkTH2fKA0CZDgP54g7J4SrtPtRIQMOQq1JiUQrlzEMEfxoMZ7oNZPARtXJBL6r7qqK+iVu/ZYEGY6CeWeQyBz/VfYejHzLWl0iC6zrb9XxsJJXw6fyob27l+8xYZRMKawIpTO4iA9iWBh3oO+wWI4kHHHN3AX9M0w8OelfqXHb1+6d4u9HWC0D6eMTn+SEI9HaHT2EObi3IjgiubghqGMJAs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WHRtdkVQSUpsT3VRcEttZjFhS1JYTUhxOC9aMHd3bHM4Yzh3VHpjYzVJb2U0?=
 =?utf-8?B?RFRnVSt2aG5vNWs1NncrOVZ6d013SjcwSVV4cG1OVFAzUUhMbmp2eVlvdUVH?=
 =?utf-8?B?TThyUURUTExKTHJ3cmMxUmxHdm9kMzgvUnZQeWdtbXRjMVdmdk9GWmVPUDhM?=
 =?utf-8?B?cmJmS2FxeDlpdGxXcFduNkNPV1NxZm9tNzlpMnFJTEhBeVRtUlF2ZFAyZmRT?=
 =?utf-8?B?dHZnMWFENHlld1RHN0d3aUhHSXhIWjFWWndjMUxQdVcrTGtkSmxFSWxESzBV?=
 =?utf-8?B?bmNSSlNlMSs0N0ZFODJYZnJsUUQ4cHRjY25TRUFiTlJueFkydWNieDhkZDJ5?=
 =?utf-8?B?NmtHaHVZaVhaRTVBMzRGSlFISXZMTTlqME92aUlHVi9yQzZWSjMwNVB5K2Mr?=
 =?utf-8?B?YnlMYlZVZklzYmhxeFNWdkpZbFhVKzBjVkhKZFpjcHBjYkVNY1JPSDZzeDlt?=
 =?utf-8?B?cXliN2hSNm81c01GczkrY25LZ3g2djlvZThmRW9ESDNDRGJmemNveVJrVDQw?=
 =?utf-8?B?NGxvNFdxTDhoTWcwSlMxRkFtYndDQjRYemJuZFFTMXhVODU4VFVESkdUNytl?=
 =?utf-8?B?Y0xyTjdsbHJvZDdzQzl1UlprWThLRHY0QlBUbVJtcTR6akgrZHUxVHMwcGV3?=
 =?utf-8?B?UzIyYmFlZU5kamZtMlBKZXNJeTFObDlrODA1cS8waTI0SWNLcUtiRkErUFgz?=
 =?utf-8?B?Ym1XMUIwTnlGbWJHUE80U0JBYmFNYXFNM0szaWdlNytESml3aGlYRVNaNWVZ?=
 =?utf-8?B?YTB4RzNjb25kNTZqT1V0dmZ4cG1DeGRLUzdRQXFLSGRiOXlIME4zZXlvVDdZ?=
 =?utf-8?B?ZnFMWHNTL2I4QVZUMy9VOGt5MXhGVUpucWxQZHV0Q1hrYzJUYTBUcWIrRTVy?=
 =?utf-8?B?eWJhT3QyWjZuU1hOV1dVT2FXL0JGUkkzdGRjWVBibCt5cERlTGlKSXFoWWtT?=
 =?utf-8?B?V3RhYVVSNWlMUE1uRk5RS3I2eW1yWE05cHhJc1VIKzI2Zkx0a3JrVTk2OG9F?=
 =?utf-8?B?eXcyL2puL1I0QWQwemd4SWg5NVBDYWt6ZVBJVSs3ZWE3ZzdUeldlRFl1WXVF?=
 =?utf-8?B?NEpZOEVxZ25nUi9sRkh6cG1xVE5IR2JFMVBSRmNSL2Rsb1k0VExENExzRkhu?=
 =?utf-8?B?MXMrRCtoLzgzbG9qcTA3UFFOZXZSUGM3dXVHQytQdmE4NjU2QWJQdi9qUjdW?=
 =?utf-8?B?M294cVNxaVJMeGkwd1lVUGpFVE5FdllhcXlCMHBkVWc1UktNUDQ1UVNDME1M?=
 =?utf-8?B?amxsZHVhaElHQ1E0a0NEbTU2bGQxTGkvNDZwMzJNR20xMytjUmtnVUs2Mjl1?=
 =?utf-8?B?cFZYT1RheUpSOUdCRWRQK0NHU1ZkSHhnRVJTN0lRQ3MwbVRBb3owQk5qR1ZP?=
 =?utf-8?B?TGIybnZQR01sUDBUV2U5TU8rVjRQOWxDS2dlYy9DSGVpcUlOZTFzZ0RoS3BK?=
 =?utf-8?B?VEZ5dUhNSTJiaGd2SXZtTXB2UDdocFhleXR1Q2dyTUhYLzNqTFNuNHB1cXZn?=
 =?utf-8?B?OWxOTTZmZmlEQjJSOTNOK3REV0preXdQZEZZZzZHVHpLVjh6Z2d2QkZySDhF?=
 =?utf-8?B?VGNjL1pteGtXQmRUTi9qNmtrV2djTVI2RVp1SFkzdThTMnNEaEc5eldoRW5F?=
 =?utf-8?B?aG9rdWpBMmNvelBORTNWYXdlR2l5T2xqVHo2V2s0NlFrME9kZmxFRDBFRDhE?=
 =?utf-8?B?ZGE4T1I2MHoyb2ZrVFNSVVRyY2tvU2wxRVc1Snk0Qm5zUjZjak1idTRZQ3NQ?=
 =?utf-8?B?SjBWS0duN0V6S3Y5b3lpSVFXWnFPbHdkdXJOeVdpYWd4dHYwalkzdTQvVjgx?=
 =?utf-8?B?eko2Qm4vU2pWbHQrcWVQRnhpdDJBZ1ZETVlrb3oxMGJ1MjdFajc2SWJWSk5j?=
 =?utf-8?B?T09jWTl3Z0JKNjlZa3I4Smw0SGhjcXd3eUE3cFZzbjhXc3A0bzFDOXpqSnlR?=
 =?utf-8?B?OE5odHRZeU1GbVhBTUZqWW9NT2h0MHduLzU3VVpYdkpDTWt3SHRlcE5NcUNk?=
 =?utf-8?B?TVpLK1NyK21OLzlSYmdtdHpFWEFhSFBUTmpYYVp1Ynk4Z2lUQThZdm4rMlhq?=
 =?utf-8?B?VFBNMm9PVUsrN20zRlVtZVdmNnFNLzY1VlFSSkJhTElEdFdROWlTYTFqV21I?=
 =?utf-8?B?Zml6UzZHSnpnRmd0VGhCdEdUZVhOb0RDVmJNeVlmOWU2cEpVVWdBdVZmYkFr?=
 =?utf-8?B?Umw3dW9aZnlaTmtTZkJ3djE1em96S2VmelNmR0dlVGJWK1YybStjZEZ0RGl4?=
 =?utf-8?B?bU13d0RCMTdEWFZoNlp2RWcyd0pyaXA1bnBUejlnKzhjRmx6UmpCZExBdVVX?=
 =?utf-8?Q?5FG9yX2thGLWYqq/Pq?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1e8cf23-fc53-4730-6d02-08dea1ddc404
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2026 08:44:58.2950
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: crgfvRK31+auzuvLpHW3zEfjL7fRrqCaMgLFibwOM0k1T4gdbwa6GhDixoTYeA+J
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR12MB9644
X-Spamd-Bar: -----
Message-ID-Hash: TSLAAFORHAGIZ6Q5AXIDFL2I3G4VDEMT
X-Message-ID-Hash: TSLAAFORHAGIZ6Q5AXIDFL2I3G4VDEMT
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, ojeda@kernel.org, boqun@kernel.org, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 2/7] dma-resv: Fix undefined symbol when CONFIG_DMA_SHARED_BUFFER is disabled
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TSLAAFORHAGIZ6Q5AXIDFL2I3G4VDEMT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 89F0E45BAB5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.400];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	REDIRECTOR_URL(0.00)[aka.ms];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,aka.ms:url,lists.linaro.org:helo,lists.linaro.org:rdns]

T24gNC8yNC8yNiAxMDozNCwgTXVrZXNoIEt1bWFyIENoYXVyYXNpeWEgd3JvdGU6DQo+IE9uIEZy
aSwgQXByIDI0LCAyMDI2IGF0IDEwOjI1OjI1QU0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3Jv
dGU6DQo+PiBPbiA0LzI0LzI2IDEwOjA2LCBNdWtlc2ggS3VtYXIgQ2hhdXJhc2l5YSB3cm90ZToN
Cj4+PiBbU2llIGVyaGFsdGVuIG5pY2h0IGjDpHVmaWcgRS1NYWlscyB2b24gbWtjaGF1cmFzQGdt
YWlsLmNvbS4gV2VpdGVyZSBJbmZvcm1hdGlvbmVuLCB3YXJ1bSBkaWVzIHdpY2h0aWcgaXN0LCBm
aW5kZW4gU2llIHVudGVyIGh0dHBzOi8vYWthLm1zL0xlYXJuQWJvdXRTZW5kZXJJZGVudGlmaWNh
dGlvbiBdDQo+Pj4NCj4+PiBPbiBGcmksIEFwciAyNCwgMjAyNiBhdCAwOTo1NjoxNkFNICswMjAw
LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+PiBPbiA0LzI0LzI2IDA3OjQ3LCBNdWtlc2gg
S3VtYXIgQ2hhdXJhc2l5YSAoSUJNKSB3cm90ZToNCj4+Pj4+IFdoZW4gYnVpbGRpbmcgd2l0aCBM
TFZNPTEgZm9yIGFyY2hpdGVjdHVyZXMgbGlrZSBwb3dlcnBjIHdoZXJlDQo+Pj4+PiBDT05GSUdf
RE1BX1NIQVJFRF9CVUZGRVIgaXMgbm90IGVuYWJsZWQsIHRoZSBidWlsZCBmYWlscyB3aXRoOg0K
Pj4+Pj4NCj4+Pj4+ICAgbGQubGxkOiBlcnJvcjogdW5kZWZpbmVkIHN5bWJvbDogZG1hX3Jlc3Zf
cmVzZXRfbWF4X2ZlbmNlcw0KPj4+Pj4gICA+Pj4gcmVmZXJlbmNlZCBieSBoZWxwZXJzLmMNCj4+
Pj4+ICAgPj4+ICAgICAgICAgICAgICAgcnVzdC9oZWxwZXJzL2hlbHBlcnMubzoocnVzdF9oZWxw
ZXJfZG1hX3Jlc3ZfdW5sb2NrKQ0KPj4+Pj4NCj4+Pj4+IFRoZSBpc3N1ZSBvY2N1cnMgYmVjYXVz
ZToNCj4+Pj4+IDEuIENPTkZJR19ERUJVR19NVVRFWEVTPXkgaXMgZW5hYmxlZA0KPj4+Pj4gMi4g
Q09ORklHX0RNQV9TSEFSRURfQlVGRkVSIGlzIG5vdCBlbmFibGVkDQo+Pj4+PiAzLiBkbWFfcmVz
dl9yZXNldF9tYXhfZmVuY2VzKCkgaXMgZGVjbGFyZWQgaW4gdGhlIGhlYWRlciB3aGVuDQo+Pj4+
PiAgICBDT05GSUdfREVCVUdfTVVURVhFUyBpcyBzZXQNCj4+Pj4+IDQuIEJ1dCB0aGUgZnVuY3Rp
b24gaXMgb25seSBjb21waWxlZCBpbiBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYywNCj4+Pj4+
ICAgIHdoaWNoIGlzIG9ubHkgYnVpbHQgd2hlbiBDT05GSUdfRE1BX1NIQVJFRF9CVUZGRVIgaXMg
ZW5hYmxlZA0KPj4+Pj4gNS4gUnVzdCBoZWxwZXJzIGNhbGwgZG1hX3Jlc3ZfdW5sb2NrKCkgd2hp
Y2ggY2FsbHMNCj4+Pj4+ICAgIGRtYV9yZXN2X3Jlc2V0X21heF9mZW5jZXMoKSwgY2F1c2luZyBh
biB1bmRlZmluZWQgc3ltYm9sDQo+Pj4+Pg0KPj4+Pj4gRml4IHRoaXMgYnkgbWFraW5nIHRoZSBm
dW5jdGlvbiBkZWNsYXJhdGlvbiBjb25kaXRpb25hbCBvbiBib3RoDQo+Pj4+PiBDT05GSUdfREVC
VUdfTVVURVhFUyBhbmQgQ09ORklHX0RNQV9TSEFSRURfQlVGRkVSLiBXaGVuIGVpdGhlciBpcw0K
Pj4+Pj4gZGlzYWJsZWQsIHVzZSBhIHN0YXRpYyBpbmxpbmUgc3R1YiBpbnN0ZWFkLg0KPj4+Pg0K
Pj4+PiBXZWxsIHdlIGFyZSBjbGVhcmx5IG1pc3Npbmcgc29tZXRoaW5nIGhlcmUsIGJ1dCBvZiBo
YW5kIHRoYXQgZG9lc24ndCBsb29rcyBsaWtlIHRoZSByaWdodCBmaXguDQo+Pj4+DQo+Pj4+IFdo
ZW4gQ09ORklHX0RNQV9TSEFSRURfQlVGRkVSIGlzbid0IGVuYWJsZWQgdGhlbiB0aGUgd2hvbGUg
ZG1hLXJlc3YuaCBoZWFkZXIgY2FuJ3QgYmUgdXNlZCBhdCBhbGwuDQo+Pj4+DQo+Pj4+IFNvIHlv
dSBhbHNvIGNhbid0IGNhbGwgZG1hX3Jlc3ZfdW5sb2NrKCkgZnJvbSB0aGUgUnVzdCBoZWxwZXJz
LiBXaGljaCBtZWFucyB0aGF0IHdlIG5lZWQgdG8gbWFrZSB0aGUgUnVzdCBoZWxwZXJzIHNvbWVo
b3cgZGVwZW5kIG9uIENPTkZJR19ETUFfU0hBUkVEX0JVRkZFUi4NCj4+Pj4NCj4+Pj4gQWx0ZXJu
YXRpdmUgd291bGQgYmUgdG8gcHJvdmlkZSBkdW1taWVzIGZvciB0aGUgZnVuY3Rpb25zIGluIGRt
YS1yZXN2Lmggd2hlbiBDT05GSUdfRE1BX1NIQVJFRF9CVUZGRVIgaXNuJ3Qgc2V0LCBidXQgdGhh
dCBsb29rcyBhIGJpdCBsaWtlIGl0IGp1c3QgaGlkZXMgdGhlIGlzc3VlLg0KPj4+Pg0KPj4+PiBS
ZWdhcmRzLA0KPj4+PiBDaHJpc3RpYW4uDQo+Pj4+DQo+Pj4gV2hhdCBhYm91dCBzb21ldGhpbmcg
bGlrZSB0aGlzOg0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL3J1c3QvaGVscGVycy9kbWEtcmVzdi5j
IGIvcnVzdC9oZWxwZXJzL2RtYS1yZXN2LmMNCj4+PiBpbmRleCA3MTkxNGQ4MjQxZTIuLjUzYzEx
OWYxYjE0NCAxMDA2NDQNCj4+PiAtLS0gYS9ydXN0L2hlbHBlcnMvZG1hLXJlc3YuYw0KPj4+ICsr
KyBiL3J1c3QvaGVscGVycy9kbWEtcmVzdi5jDQo+Pj4gQEAgLTIsNiArMiw3IEBADQo+Pj4NCj4+
PiAgI2luY2x1ZGUgPGxpbnV4L2RtYS1yZXN2Lmg+DQo+Pj4NCj4+PiArI2lmZGVmIENPTkZJR19E
TUFfU0hBUkVEX0JVRkZFUg0KPj4+ICBfX3J1c3RfaGVscGVyDQo+Pj4gIGludCBydXN0X2hlbHBl
cl9kbWFfcmVzdl9sb2NrKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3Qgd3dfYWNxdWlyZV9j
dHggKmN0eCkNCj4+PiAgew0KPj4+IEBAIC0xMiwzICsxMyw0IEBAIF9fcnVzdF9oZWxwZXIgdm9p
ZCBydXN0X2hlbHBlcl9kbWFfcmVzdl91bmxvY2soc3RydWN0IGRtYV9yZXN2ICpvYmopDQo+Pj4g
IHsNCj4+PiAgICAgICAgIGRtYV9yZXN2X3VubG9jayhvYmopOw0KPj4+ICB9DQo+Pj4gKyNlbmRp
Zg0KPj4+DQo+Pj4gVGhpcyBzZWVtcyB0byBmaXggdGhlIGlzc3VlIGFuZCBtYWtlcyBzZW5zZSwg
d2hvZXZlciB3YW50cyB0byB1c2UgdGhlDQo+Pj4gZG1hIHNoYXJlZCBidWZmZXIgd2lsbCBhbnl3
YXkgZW5hYmxlIHRoZSBjb25maWcNCj4+DQo+PiBZZWFoIHRoYXQgZGlyZWN0aW9ucyBtYWtlcyBz
ZW5zZS4NCj4+DQo+PiBJIHdvdWxkIG1heWJlIGdvIGEgc3RlcCBmdXJ0aGVyIGFuZCBkb24ndCBl
dmVuIGNvbXBpbGUgcnVzdC9oZWxwZXJzL2RtYS1yZXN2LmMgd2hlbiBDT05GSUdfRE1BX1NIQVJF
RF9CVUZGRVIgaXNuJ3Qgc2V0Lg0KPj4NCj4gVGhpcyBtYWtlcyBzZW5zZS4NCj4+IEJ1dCBpZiB0
aGF0IGlzIG5vdCBwb3NzaWJsZSBmb3Igc29tZSByZWFzb24gdGhlbiB0aGlzIHNvbHV0aW9uIGlz
IHBlcmZlY3RseSBmaW5lIHdpdGggbWUgYXMgd2VsbC4NCj4+DQo+PiBUaGUgZ2VuZXJhbCBnb2Fs
IGlzIHRvIG1ha2UgdGhlIGVycm9yIG1lc3NhZ2VzIHdoZW4geW91IGhhdmVuJ3Qgc2V0IENPTkZJ
R19ETUFfU0hBUkVEX0JVRkZFUiBhbmQgc3RpbGwgdHJ5IHRvIHVzZSB0aGUgRE1BLWJ1ZiBmdW5j
dGlvbnMgZWFzeSB0byB1bmRlcnN0YW5kIGFuZCBub3Qgc29tZXRoaW5nIGNyeXB0aWMuDQo+Pg0K
Pj4gVGhhbmtzLA0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4gDQo+IFdoYXQgYWJvdXQgdGhpcyBvbmU/
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvcnVzdC9oZWxwZXJzL2hlbHBlcnMuYyBiL3J1c3QvaGVscGVy
cy9oZWxwZXJzLmMNCj4gaW5kZXggNjI1OTIxZTI3ZGZiLi4wOWVlNWNhYzYwMGQgMTAwNjQ0DQo+
IC0tLSBhL3J1c3QvaGVscGVycy9oZWxwZXJzLmMNCj4gKysrIGIvcnVzdC9oZWxwZXJzL2hlbHBl
cnMuYw0KPiBAQCAtNTcsNyArNTcsOSBAQA0KPiAgI2luY2x1ZGUgImNyZWQuYyINCj4gICNpbmNs
dWRlICJkZXZpY2UuYyINCj4gICNpbmNsdWRlICJkbWEuYyINCj4gKyNpZmRlZiBDT05GSUdfRE1B
X1NIQVJFRF9CVUZGRVINCj4gICNpbmNsdWRlICJkbWEtcmVzdi5jIg0KPiArI2VuZGlmDQo+ICAj
aW5jbHVkZSAiZHJtLmMiDQo+ICAjaW5jbHVkZSAiZXJyLmMiDQo+ICAjaW5jbHVkZSAiaXJxLmMi
DQoNCkxvb2tzIGdvb2QsIGZlZWwgZnJlZSB0byBhZGQgUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KQnV0IHNvbWVib2R5IG1vcmUgZmFt
aWxpYXIgd2l0aCB0aGUgUnVzdCBoZWxwZXJzIHNob3VsZCB0YWtlIGFub3RoZXIgbG9vayBvbiBp
dC4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gUmVnYXJkcywNCj4gTXVrZXNoDQo+
IA0KPj4+DQo+Pj4gUmVnYXJkcywNCj4+PiBNdWtlc2gNCj4+Pj4+DQo+Pj4+PiBGaXhlczogMGM2
YjUyMmFiYzJhICgiZG1hLWJ1ZjogY2xlYW51cCBkbWEtcmVzdiBzaGFyZWQgZmVuY2UgZGVidWdn
aW5nIGEgYml0IHYyIikNCj4+Pj4+IFNpZ25lZC1vZmYtYnk6IE11a2VzaCBLdW1hciBDaGF1cmFz
aXlhIChJQk0pIDxta2NoYXVyYXNAZ21haWwuY29tPg0KPj4+Pj4gLS0tDQo+Pj4+PiAgaW5jbHVk
ZS9saW51eC9kbWEtcmVzdi5oIHwgMiArLQ0KPj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPj4+Pj4NCj4+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L2RtYS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCj4+Pj4+IGluZGV4
IGM1YWI2ZmQ5ZWJlOC4uMjNjOGRiMGI1MjE0IDEwMDY0NA0KPj4+Pj4gLS0tIGEvaW5jbHVkZS9s
aW51eC9kbWEtcmVzdi5oDQo+Pj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCj4+
Pj4+IEBAIC0zMTEsNyArMzExLDcgQEAgc3RhdGljIGlubGluZSBib29sIGRtYV9yZXN2X2l0ZXJf
aXNfcmVzdGFydGVkKHN0cnVjdCBkbWFfcmVzdl9pdGVyICpjdXJzb3IpDQo+Pj4+PiAgI2RlZmlu
ZSBkbWFfcmVzdl9oZWxkKG9iaikgbG9ja2RlcF9pc19oZWxkKCYob2JqKS0+bG9jay5iYXNlKQ0K
Pj4+Pj4gICNkZWZpbmUgZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQob2JqKSBsb2NrZGVwX2Fzc2VydF9o
ZWxkKCYob2JqKS0+bG9jay5iYXNlKQ0KPj4+Pj4NCj4+Pj4+IC0jaWZkZWYgQ09ORklHX0RFQlVH
X01VVEVYRVMNCj4+Pj4+ICsjaWYgSVNfRU5BQkxFRChDT05GSUdfREVCVUdfTVVURVhFUykgJiYg
SVNfRU5BQkxFRChDT05GSUdfRE1BX1NIQVJFRF9CVUZGRVIpDQo+Pj4+PiAgdm9pZCBkbWFfcmVz
dl9yZXNldF9tYXhfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqb2JqKTsNCj4+Pj4+ICAjZWxzZQ0K
Pj4+Pj4gIHN0YXRpYyBpbmxpbmUgdm9pZCBkbWFfcmVzdl9yZXNldF9tYXhfZmVuY2VzKHN0cnVj
dCBkbWFfcmVzdiAqb2JqKSB7fQ0KPj4+Pj4gLS0NCj4+Pj4+IDIuNTMuMA0KPj4+Pj4NCj4+Pj4N
Cj4+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
