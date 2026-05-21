Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKCGAS73DmoSDwYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 14:14:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7746C5A49E4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 14:14:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 474A13F751
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 12:14:36 +0000 (UTC)
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013009.outbound.protection.outlook.com [40.107.201.9])
	by lists.linaro.org (Postfix) with ESMTPS id 7F1AB3F751
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 12:14:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=X0RxjtdQ;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.201.9 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Df4qOc/yc0me8SlVRSyV5LwN2ALsosqMLA2pF3ywKPHz2NE2xPdFAUC3RE2jFR6Ar7iEkj2kjwcf3SmdKnOknp23djQ6qQ0YOJcrIN5qz78ylre54Hiy3ZnEpTyz8ifauQU+9ozHhtCDiJo0Ub9kfZ3sI9+q85LQubWbGj7hPscxecOoF2HVQF2wkOyg9CCbCnzobkb2lzd8eoDnB6RjazfTSvmlTrTFB3o6D7Hfs91QJ1Kv7EaO6CoyEj9jFKAjzMbx3wsOvDTEOFeCt+p02dJE8JevC7Fzj1pgCewwjZFx9ssJ7mzAUu7eS4fVX11aBJLCQwEFejuZ+ps8NMJdOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l9S/fnvGl2iDtNke6giS6ptJ1N8Lew0wxon+eBDYQPI=;
 b=inBM8N95V6zVoV6OMkiIlsRHedX6u2vrGlL2vGdRUOIUPM/szydJWA7bQrC/KwXSgzcl2sruHJaXGJ6Gck7OXHvfNBFFBMYgZq9wQs9kxvQk3jsN+gjAOfOJK+DvA2pNEukXFUiR90e+fEzfgtbrclqe0XQrdd4iKGG//h5GhuZM+bqRK/HpaKIMXJOjtt3MUM8pVZ/LzEFeCLQIyitfObSmAHTltduB0NcjzVpoS8b+3gt7oLN3WBNaX7HgGavAK7S0eibW24GY1j8ITdLNHuG0hZ9YyOHPms3y2ErfXKjpMDRfIiTTwO0Vm6hu5OLZIft+ZizVnZiRMBWe5uHVAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l9S/fnvGl2iDtNke6giS6ptJ1N8Lew0wxon+eBDYQPI=;
 b=X0RxjtdQRAmsv/++Qt9f/vs6N3lkN27NTLDGZxhgDBYOBKSmz2uNO0FAY2RQYJU7NsFtL4slZkwfltVgkHrEbJT0zjxNEoOF/eSF64Q7wWTarUs68vYwubpJM8JYVTWnTrFofbEWBEkRzUwjrV27LGHWIK6C40IOwN+SuNViPic=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV3PR12MB9186.namprd12.prod.outlook.com (2603:10b6:408:197::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Thu, 21 May
 2026 12:14:22 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Thu, 21 May 2026
 12:14:22 +0000
Message-ID: <43cc6f84-76fc-4653-83c0-6fa7eb474895@amd.com>
Date: Thu, 21 May 2026 14:14:15 +0200
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
 <20260513-panthor-guard-refactor-v1-2-f2d8c15a97ce@collabora.com>
 <03a57011-e734-4a74-aef2-e3a6016e15fc@amd.com>
 <20260518111456.30ba9bba@fedora>
 <a9ee80aa-0c9b-4bd7-87bb-d3e228357b18@amd.com>
 <20260518161531.331cab2d@fedora>
 <d793568d-9611-4174-b9e9-c71ffec5ae93@amd.com>
 <20260521105402.4bc4b1e5@fedora>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260521105402.4bc4b1e5@fedora>
X-ClientProxiedBy: FR4P281CA0276.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e6::6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV3PR12MB9186:EE_
X-MS-Office365-Filtering-Correlation-Id: fbff5b8e-a2fd-42f1-c962-08deb7327e1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|8126099003|18002099003|22082099003|56012099003|11063799006|5023799004|4143699003;
X-Microsoft-Antispam-Message-Info: 
	XL88AY4I7cDDJ8PH80JKu2A/VblnSOAWX1gmeT8GKdDvoxJvWqiFOvQ9xAd/87ngwj6nSk03VZ4KJYH8pWo5uMWz39T1EvKeWZCwDfZldqiXH2bH3TZF7rHr00NV+f4A+QeTJQUUITOq7XqNymSvhbxL1+fKy5ug2XW+FCKWCYuoKpWc49mwry9eKvH1I01gUyPenzvYOBjCayF3M4GGntpmroDHCDqO2Nf8attyz70yXTxXkHSQETC1tWPtWoqN2/86RIPb3MkrjY911rhB3r0RYPyUuro2Z3wUOFAYMqUxxXSanstqLe6hrccdNIqZmTjtw6RL8k6t/HH0kqdUMYzE7F39x8vCn7uR1MTrwVpswxkyVDLqGFal8vij0DzjLskdprFbb4A6vWWc3u3EzNaUY4vyHFyEUbrBW/1gkm5E2O3Y3aWaAKm92Bh4oYgjd6b5IIAXUKcU0uNyXXq3EE65O2Dicy11lGgwHBzqJ8iBcLA2BeSgq4K9n982ONQCxf58LaKDEVE5mfdymtFN1WEJXwuHCHwRwQsnKbx3drGGUFmxwQ3UfvUlbnrsR8sNLTfLXw4z9g1HfbIp7nYWNh/6SPB2YxXICS5b1zIt+t3Nu1IbUfQd5OBib+YnzQdvr5LomxrJ4PLYIWyDBpTzfGFQfumcfmbBuuSpgG5ZD6nBLoZUT1orT+KTd7sZhe/s
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(8126099003)(18002099003)(22082099003)(56012099003)(11063799006)(5023799004)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cFhJRmdTSFdvbnNTMmZXZ01jZ1lOWWRXeXlscWVOek5Nb0xXa2srb3hXWmZO?=
 =?utf-8?B?bWFZOHVuVEJ4QkFTWmMvMGhaamh0VTcwd0dzMEJPSkVsUGF4YWhJWFlZOXhV?=
 =?utf-8?B?Zk9ET2VFYVVzT1pKMTh2YUlHdlFDaEx6VHlGcnhzZDk5c0NHbC9zKzYrbUll?=
 =?utf-8?B?OFNEY0hFMVV4MFVheFVBRDRMaFV2Y0ZnZUE4RXJUL0ZIVUtkcTlrd1czOElV?=
 =?utf-8?B?bVRaMVV4ayt6OG4vQ1FyKzNnYzFQUjFUVjBpdmdUcWJKQ1JzNXplZ1FLTFEz?=
 =?utf-8?B?NXNrNE9wanJCaUlLRFkyU1RIZWFNM29DeVpJaXhIK2Z5U25nc2lqR200RzVz?=
 =?utf-8?B?N0VtcmhSTGxId3VPMFVpaTJReGxiN0lsWTNOYVd0bkJmNm9aRnJVOEh0NDJj?=
 =?utf-8?B?VkIyL2JKN2FnNUVUTzRnVmxFdUdZME9aUGVjTk5uaG5jaDBqZVFkaE5Gemw0?=
 =?utf-8?B?ZitpdGZvd0EwWmgvVzd0SlM4ZEZnUkUzT052bWMra2xpU2dYVmtVRmVQT0gy?=
 =?utf-8?B?cTZlQml3bUJ0NmhLVmFadHo0L21zWUh5REd6dVBZd3dvTzl3Vm5jWVJKYXNK?=
 =?utf-8?B?OUZPQ0oyQ1N2aytVaThseDZoQmRmSUNlajdzTlh6bDBXVDR3aks4OUdDRDdn?=
 =?utf-8?B?THJ4elVwTnN6QTNKVkN6ajJsZ1JyemxNdmhNNytneWFKYTNFVjZRaWtJTlEz?=
 =?utf-8?B?OUxWditNejFvanBLa3dvSkdCSU8zUTlyTXRLbkhja0VqeGIwTlc1Sm53ajU1?=
 =?utf-8?B?aDZmN21uZlJjb1B4aXpDb2dFYS96Wm5BS2owRkFtait2Ulk4bi9Jbk9tS0N6?=
 =?utf-8?B?SXZvVnpRY0ZRczg0NXZkSnFENklxRGpSaXVKd3F2a3A4b25uWkRDZCtTTzZ0?=
 =?utf-8?B?ZG1tZnN4ajJEWlI3azV0WDErcnNwakt6TXVkUGFQV2RDb0NnaVFqRzZOZm5G?=
 =?utf-8?B?eGR0L1VBMVcyb0wvNDN4bnlDbTNRYUQrNWZwSjVGcTVuMmlKeHkxU1E0SnhJ?=
 =?utf-8?B?eEh0Zm42Y0JiaHZnbzBkMGhWOG53QWpoWjN5QUhnZnY0NC80RmZoWXhBTS94?=
 =?utf-8?B?dG95bitCaG11ZDJwWGFxSmhaL1dsYlNjTjNsVTgrdEdKZXl5b0pMdnYxR0Fi?=
 =?utf-8?B?a29sTEdpZjdrZXZpVW1HR3VmMVNtajA3d3pVVXpVR00wb0RVcExuL3hadmNq?=
 =?utf-8?B?L2JvanhoS2tjMjhiZUpieGh1eUMwT2RZYXZtUzNmQ0ZqQWlyU21GNmNtQ1Vo?=
 =?utf-8?B?TlcyUmZIcDlpRFo2WWJnN1ZuVlFuTFU3SGVVNWVTQ0lVeldPOWRWRHhXeFBR?=
 =?utf-8?B?QU45YWVxcDhVY0JxcVR0enNFYXAwQU9zK2J6c3dnaEx2U3dML2dHOXQ2ZlpY?=
 =?utf-8?B?OFdBMGYwVDhBSGpBMi9MdnYyL2FHeThnQmN0Z0FuNFN5MEZhWStCZmhFWW8x?=
 =?utf-8?B?VE01emJRaTZpdDhiU1pPTm9SZzlvZHp0Tk5BN0JhSzdwU1RtRmtQOUVvYlVz?=
 =?utf-8?B?LzQ1V29JZDZsSlI3SGlaUmJKa05uWURuN0hYWmxWNFUzbkZibFI0ejVtUzh5?=
 =?utf-8?B?Vkc4NWZ2Z1BqVWg0TnpzLzNha25WQkNQZ25iS2hhTjJGZW9WNTdTa0gzenlv?=
 =?utf-8?B?WlpQWDl5NjFMM0lzQjdRMkVBVVB1YlBoNEoxNzNvUTYyYW1IYW5jekNzdG1Y?=
 =?utf-8?B?dFRiL2ZlS21mOUkva1FxVjlVMWUxTVlNYy9OU25wbWNTb0pIYThOa0JzWFYz?=
 =?utf-8?B?bGdhVzRpQzRYWVQrcWlpblVubEVsNmFhWnNRVzIwTTYvbEwwdU1WajJ4Z1BT?=
 =?utf-8?B?SHdsTEVQM0x5a2ZMZU5aVHBIY2gvVXNzL20yRDVPVHpsK0RLaFlGZkp1MklM?=
 =?utf-8?B?ZEdXNk10VHpUNGxoSDFNVzl2NUNPZ3FZc3BPa3hLTndMdFRzdmM0NU1SMUFS?=
 =?utf-8?B?eGhCeWxHSldqZk0waXJmYUhTM1lsdTBxUXNWK3pLWS9TWm4rRXZ6eSs3MW9i?=
 =?utf-8?B?cUNRREZ6RWhHcUdKUENPeUFpMzJ2ZnFwK0RyUXVLUUlPUzJWRjZGUGhXK0g4?=
 =?utf-8?B?NXNscDBoU3lnUlg5Mi9pYzVGQzlZSG1yN1REQ3kxdmxJY1VEMzU0T0NieitZ?=
 =?utf-8?B?WFZFK0l6Yy9FbGtrUE0rWjRDdFhDbkJzdzQ2TVNpVmJiUVhEZkVGbENpRWpP?=
 =?utf-8?B?M0M3dmMwRElEaWNpOFlUUjcwbjVycnB3a3R1VFBNUXZleUNWZnE4RFdWd0NQ?=
 =?utf-8?B?QmVnTWpSL25aaEJVbDUyZWlid0k4dGVXbW43bE03d3JqV3NRN3AyRnYxajBy?=
 =?utf-8?Q?vUYgCx7gbpchIa0OYU?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbff5b8e-a2fd-42f1-c962-08deb7327e1a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 12:14:22.6161
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xd56pTD1WoZh3MsJFT+QS8JqIe3GLx9TX9Z6OAq4lYST6isnJS9bIa67ArQDTUlM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR12MB9186
X-Spamd-Bar: --
Message-ID-Hash: FR3RRXSC4MUSQ6B6XOZ7JHGOLRWN57WQ
X-Message-ID-Hash: FR3RRXSC4MUSQ6B6XOZ7JHGOLRWN57WQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/6] dma-resv: Define guards for context-less dma_resv locks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FR3RRXSC4MUSQ6B6XOZ7JHGOLRWN57WQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,linaro.org:email,amd.com:mid,amd.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 7746C5A49E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8yMS8yNiAxMDo1NCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiBPbiBUaHUsIDIxIE1h
eSAyMDI2IDEwOjM2OjQ3ICswMjAwDQo+IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4gd3JvdGU6DQo+IA0KPj4gT24gNS8xOC8yNiAxNjoxNSwgQm9yaXMgQnJlemls
bG9uIHdyb3RlOg0KPj4+IE9uIE1vbiwgMTggTWF5IDIwMjYgMTQ6MTg6NDEgKzAyMDANCj4+PiBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPj4+ICAg
DQo+Pj4+IE9uIDUvMTgvMjYgMTE6MTQsIEJvcmlzIEJyZXppbGxvbiB3cm90ZTogIA0KPj4+Pj4g
SGkgQ2hyaXN0aWFuLA0KPj4+Pj4NCj4+Pj4+IE9uIE1vbiwgMTggTWF5IDIwMjYgMDk6MTA6MjMg
KzAyMDANCj4+Pj4+IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4g
d3JvdGU6DQo+Pj4+PiAgICAgDQo+Pj4+Pj4gT24gNS8xMy8yNiAxODo1OCwgQm9yaXMgQnJlemls
bG9uIHdyb3RlOiAgICANCj4+Pj4+Pj4gV2hlbiB1c2VkIHdpdGhvdXQgYSBjb250ZXh0LCBkbWFf
cmVzdiBhcmUgbm8gZGlmZmVyZW50IGZyb20gcmVndWxhcg0KPj4+Pj4+PiBsb2Nrcy4gRGVmaW5l
IGd1YXJkcyBzbyB3ZSBjYW4gdXNlIHRoZSBndWFyZC1zeW50YWN0aWMgc3VnYXJzIGZvcg0KPj4+
Pj4+PiBleHBsaWNpdC9pbXBsaWNpdCBzY29wZWQgbG9ja3MuDQo+Pj4+Pj4+DQo+Pj4+Pj4+IFNp
Z25lZC1vZmYtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5j
b20+ICAgICAgDQo+Pj4+Pj4NCj4+Pj4+PiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+Pj4+DQo+Pj4+Pj4gSG93IGRvIHlvdSB3YW50
IHRvIHVwc3RyZWFtIGl0PyBNeSBwcmVmZXJlbmNlIHdvdWxkIGJlIGRybS1taXNjLW5leHQsIGJ1
dCBJIHRoaW5rIEkgY2FuIGxpdmUgd2l0aCBhIHBhbnRob3Igc3BlY2lmaWMgYnJhbmNoIGFzIHdl
bGwuICAgIA0KPj4+Pj4NCj4+Pj4+IEV2ZXJ5dGhpbmcgUGFudGhvciByZWxhdGVkIGdvZXMgdGhy
b3VnaCBkcm0tbWlzYy1uZXh0LCBzbyBkcm0tbWlzYy1uZXh0DQo+Pj4+PiBhbHNvIGhhcyBteSBw
cmVmZXJlbmNlIDstKS4gQnV0IEknZCBsaWtlIHRvIHdhaXQgZm9yIG1vcmUgZmVlZGJhY2sgb24N
Cj4+Pj4+IHRoZSBvdGhlciBkcm0gcGF0Y2hlcywgYW5kIHRoZXJlIGFyZSBhIGZldyB0aGluZ3Mg
SSBuZWVkIHRvIGFkZHJlc3MgaW4NCj4+Pj4+IHRoZSBwYW50aG9yIHBhdGNoZXMgYW55d2F5LCBz
byBpdCdzIGxpa2VseSB0byB0YWtlIGEgY291cGxlIG1vcmUgd2Vla3MNCj4+Pj4+IGZvciB0aGlz
IHNlcmllcyB0byBoaXQgdGhlIGRybS1taXNjIHRyZWUsIHVubGVzcyB5b3UgaGF2ZSBhIGdvb2Qg
cmVhc29uDQo+Pj4+PiB0byBmYXN0LXRyYWNrIHRoaXMgc3BlY2lmaWMgcGF0Y2guICAgIA0KPj4+
Pg0KPj4+PiBXZWxsIHRoZSBETUEtYnVmIGNvZGUgaXRzZWxmIHVzZXMgZG1hX3Jlc3ZfbG9jay91
bmxvY2sgIA0KPj4+DQo+Pj4gVGhlcmUncyBubyB1c2UgaW4gZG1hLXJlc3YuYyB0aGF0IGNhbiBi
ZSBjb252ZXJ0ZWQgdG8gZ3VhcmRzLiBJIGdhdmUNCj4+PiBkbWEtYnVmLmMgYSB0cnksIGJ1dCBq
dXN0IGxpa2UgZm9yIHBhbnRob3IsIEkgZG9uJ3QgcmVhbGx5IGxpa2UgdGhlIGZhY3QNCj4+PiBp
dCdzIGhhbGZ3YXkgdGhyb3VnaCAob3RoZXIgbG9ja3Mgc3RpbGwgdXNlIG1hbnVhbCBsb2NraW5n
KSwgc28gSSdkIGJlDQo+Pj4gdGVtcHRlZCB0byBjb252ZXJ0IGV2ZXJ5dGhpbmcgYXQgb25jZSBm
b3IgY29uc2lzdGVuY3kuIElmIHlvdSdyZSBmaW5lDQo+Pj4gd2l0aCB0aGF0LCBJIGNhbiBnaXZl
IHRoaXMgYSB0cnkuICANCj4+DQo+PiBXZWxsIGRlcGVuZHMgb24gd2hhdCBldmVyeXRoaW5nIG1l
YW5zLiBJIHdvdWxkIG9ubHkgY29udmVydCBkbWEtYnVmLmMgaW4gb25lIHBhdGNoIGFuZCBub3Ro
aW5nIGVsc2UuDQo+IA0KPiBCeSBldmVyeXRoaW5nIEkgbWVhbiBhbGwgdHlwZSBvZiBsb2Nrcywg
bm90IGp1c3QgZG1hX3Jlc3Ygb25lcy4NCg0KTmEsIGRvIHRoYXQgc3RlcCBieSBzdGVwIGZvciBl
YWNoIGxvY2sgdHlwZSBpbiBpbmRpdmlkdWFsIHBhdGNoIHNldHMuIERNQS1idWYgYXMgb25lIHNl
cXVlbmNlIG9mIHBhdGNoZXMsIHRoZW4gRFJNIGRldiBlbnRlci9leGl0IGFuZCBmaW5hbGx5IGV2
ZXJ5dGhpbmcgcGFudGhvciBpbnRlcm5hbC4NCg0KSXQncyBvayB3aGVuIHRoZSBETUEtYnVmIGxv
Y2sgcGF0Y2ggc2V0IGNvbnRhaW5zIGNoYW5nZXMgdG8gcGFudGhvciBhcyB3ZWxsLCBJJ20gaGFw
cHkgdG8gcHVzaCB0aGF0IGluIG9uZSBnby4NCg0KSXQncyBqdXN0IHRoYXQgdGhpcyB3YXkgd2Ug
Y2FuIGVhc2llciByZXZlcnQgdGhpbmdzIHNob3VsZCB3ZSBoYXZlIG1pc3NlZCBhbnl0aGluZyBk
dXJpbmcgcmV2aWV3Lg0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
