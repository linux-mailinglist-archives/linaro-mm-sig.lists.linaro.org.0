Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Lwk1GFBiR2oHXgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 09:18:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CC39C6FF7B6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 09:18:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=y18Php5u;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DEFC540ABF
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Jul 2026 07:18:38 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011066.outbound.protection.outlook.com [40.107.208.66])
	by lists.linaro.org (Postfix) with ESMTPS id BD6EF3F7E6
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Jul 2026 07:18:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RlpnsF9x5atzy2bHlldDL7bz+DGBWfcGk+eCMAwGh+jrODyn6VwpblG89C5FEqUyQJ2B9+sEx789Lams8qp5IxHzTLUq0JS0WeEEFOQNc0LRuxq7Dg1yunu2siubyTyyrquGFblZZUcr6XpKpr4xtToezXU5JfaYAp3eJB2/CchHM7eHvUCJLI3BusjLfeWFKgRFNRIPCS4BAktEDBdnp0wFKtWEZTFh/V7TS8JUbbh6fVXGKLHhzSnkx2fSC+tDLgHmxBcRsCnbGYGCsbMvBW23L8oTul8JmNgX/wpQKnYY5h8yATDaHC6E9DyP+eI23s5j/t7Hnp2+aprS3zfVmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LbJjZJIrDSnwhHzE5qpUAoECLDEIg5imBWN1SxMXFd8=;
 b=xGbAc3QdAvuEqRVfuqZmdqYdIioWP508/vUSX3P+LjB70lWn6CkYj1SbNi7+KzWRKPoorqfKg3kE13DZr8nfHoh85pZdEQFVv+1EZ3ip8abJVWdPE3mEd3Y3axk9NKc8dR+qnO2tPT1gfnXH+zvZQ1RbcIUpILj06pUICXFZv6Pe65mFNoJufA3lt1f1Pqhlkmh/GznI/U4yu9Bw1jdIwSmMQ/yYBNLuosVDKUHqv1iEbxfSbTnjBkYcy5U3UJ/cQJWsqDAhfuxQW24WfdCIxADHGJM4yTWl/Az4OGnhsQR3bmlfMINygnIo/uAnjEws6i1v9GX/lEIy6v1WEmM8xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LbJjZJIrDSnwhHzE5qpUAoECLDEIg5imBWN1SxMXFd8=;
 b=y18Php5uxHUdrla10qgXD/j+TabtUek9UKXP69PyR9IN3EAmSDhjFIcBPwOTplpGPO/db+zFGcz7CpguhHB6Td80ga/ZjNeJ/iNZkja5BTyuf2E7VWYNZoiUMTlMaUsvRvxwBvC+GAbpi3TXxO7lOaJ4UiQkl11nZ4LE2MoLNEE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BL4PR12MB9505.namprd12.prod.outlook.com (2603:10b6:208:591::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Fri, 3 Jul
 2026 07:18:24 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0181.008; Fri, 3 Jul 2026
 07:18:24 +0000
Message-ID: <c637c757-181b-494b-9866-27539b0fa474@amd.com>
Date: Fri, 3 Jul 2026 09:18:19 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Nicol=C3=A1s_Antinori?= <nico.antinori.7@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20260702171234.31030-1-nico.antinori.7@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260702171234.31030-1-nico.antinori.7@gmail.com>
X-ClientProxiedBy: FR4P281CA0375.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f8::10) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BL4PR12MB9505:EE_
X-MS-Office365-Filtering-Correlation-Id: afbec0df-f2ce-47b4-2cb8-08ded8d344ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|23010399003|376014|1800799024|366016|11063799006|56012099006|18002099003|22082099003|3023799007;
X-Microsoft-Antispam-Message-Info: 
	YJJm87SQYm1Q8wbcA3WVZ6IsfvriDNqA03rc99ud7aoAJEXkNwy8faGdWU3d1f+FESYKB3tVYnGNByJETFXW5QP++Sl/23hnIsK1dzCDVFk31u180Q1Dfstk+P/HgfofCC99Rt1VVIvJyoqi8SJ+AwQVJMnk5c76hZP2RwZcAxTZCjVZ1g1rhD7Ry5C9G01ms8ZPg/O25m7LhwNmo7jC8X64aYy6msiSlHbtMPz7I53fc9n/HesvoPQQPLzvEJVazXBDbXfRV6RZIsB2JFDJZ76As9p5iihqzZOTbPpDwqRuOx/80ARXcTPaLjKLnh8o2BqbTqtnbYFrRd8hOQIVrxHHRAx9S21br+jfThMpgmqsJOU6ibl3sB2iTZ2j5Bx5f45h7GGMfWUN4avGQtwwfWi6OpmZCU7kmU2BELxvurHV0c5Vf/cktZ+d1tzDiIfjMGNBf3C5vOUD0WWshtJV3QTeN2TOEQpDBvhuuTr7WhoL4sWYyzbvQI8G+jO4fkeMke12CHFLog3xLe5TmKQrwnDZR3pe4TbwXLjy8aUw2ocSHEwS8XpOkqh7aVOtctfzGvfk13zsDgi3RwsK0UrSbaFRrC5Lr38mY8rb48nOHmm/4CTRbrV1V412mteIrknJNxclt+w2Yt1R5IEA/mrZrdnLlYSzoSkhf/AcjwUPFvI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(11063799006)(56012099006)(18002099003)(22082099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TDZPNHdGbE50eDdBbkJhUEppYnNmM01mT1JBbXJ4MytkV210SnVnbmRERVBt?=
 =?utf-8?B?YmRGWXZMSXlwVEhieStwY0RUakZ0RnMvTTYzNlJKaHllUUc5S2FDOGIvK1dS?=
 =?utf-8?B?NCtDSXBaSUZWYlFBek9iK3pFcXdkUmc1YjZQOGZ0QjU4WjZLNmJTUnU5bnBF?=
 =?utf-8?B?VDhvVG9EVkJzUFFjOG1JdnM2d3ZpRGt3ci8vZmd4dE0yUUk3YlBuMjc5d2tX?=
 =?utf-8?B?Q3FoVmk4NndaNzRHZUdBN0Y4ZFRPK0Yzdzhmc0dwRmZTOGtqaCs4OW5xSi96?=
 =?utf-8?B?azZXdGpaeC9TWkF3dnNUQXQwQ3cyd0ZjRUtWQ0tEN29MZVUvTVEzMS9QcDZY?=
 =?utf-8?B?USt2OS9kQ1l1RWQ3STVoNSt1NytmdEJSSHlHVEFsRFpieWc2ZGZtTzBkQm5x?=
 =?utf-8?B?YXBjL2NpVVRJTHlhdS95N01LTE1pYjVaQnk4L25TVllORDRUUy92MjNRaDJI?=
 =?utf-8?B?U3FUenE2UlIrQWdiSTd6Z1Nra3VHS0ovK1Q3UVBsVHJ1MmFqRWVod0dOTHkz?=
 =?utf-8?B?NEE1eUhHSEJ3Yk9hREZ3b1NVaUNtakZOREdCazE5cTRrSVN2RGc0OEM4UmJ1?=
 =?utf-8?B?Z2swbGlHVExJNEh4K2lKQndoaGdQWVVPKy9BZDhYNmVJM2tPUVdOaEJodTV3?=
 =?utf-8?B?Zit3TXVPWkJFZ2pxNUV5NUdCdTVYYkdtU28vQ2FTSi8xNk5Sby9tVXByVWVh?=
 =?utf-8?B?Uk1JdjRYdlk0VVg5Y3NKS1h4bjNVSHlXZEJVZFF1bnljZlZQdVhKS3VrRmZa?=
 =?utf-8?B?ODV3K0w5RmdiMmhKZG9tcWo4azRIRWgrNmE2TEw3bXRHZDI3dkRGMWJOYmNz?=
 =?utf-8?B?U09NMDdBdVpBZmtOdEQ1Rk50UEZIaHdyOVd5RGV6V1VER2FYN3ZjYUlweTdI?=
 =?utf-8?B?Y1NKM3hjMWZDV1IvQ2Y0M1gxV0ZnMng3Q2ZMNFdWcXFoYVVBVENYVnlEV2NP?=
 =?utf-8?B?M1paZWF2Y0kvQVJGOE5GemIzU1RqUlRYSjFDUkxxWVdlWHUxeERYNUc0MFYr?=
 =?utf-8?B?WkRyQ0QvVVBnM3dqc1AxSGJORzQxM3lxKzhRUEYrczhMWVdyL0lwVGs1WDhY?=
 =?utf-8?B?Qis1dW1hSm40T05tcWN1bU53b3BwL1UwWHd4WHkzOUVVVnV4aUlIY2Rta1Ry?=
 =?utf-8?B?YUo0elc1a3lOdWNlMlNSakhQVFRyNjdBdzdjT1Z0L1hncEhtQ1hyN0cwSU5I?=
 =?utf-8?B?Q0FZRURNYkw3TTFvcU1GTHk4eVNNWldUcC9jMWltNk12N2hCQ2dOMDBFd3Qr?=
 =?utf-8?B?czQrVjRCYm5JZjhsODlGVmllaWhwNHQvLzhIOHJZWnRHWWZ2cEhxSWhHdmNp?=
 =?utf-8?B?R3hLVFg5ZWF2Y0Y4WWpRVUtnd2VYUVZYdTlxeFRCZmIxNWRCRHcwazB6Tk1L?=
 =?utf-8?B?SGsxS2d0UXR4OXJGcE1IckQ4NHBLSzVWQjZ2UHdacVhWY28yUG5MYUVoRk1s?=
 =?utf-8?B?NWcvVE5DbThvNGhFcExzWTBEa3ZPK1QraWNFSzFId1BtUFJDVmpoaGxnOWdo?=
 =?utf-8?B?R2QyNGFHRkFETXVReUo4c3FTbGtaR00vMFBzRzZwTnBnSFlnQjNQemIyNmcr?=
 =?utf-8?B?NTJxek1URHJZMDdvOTBLakFXdXFlUW45NkxPSkxnRGc5aGNBZ3M1V2tWVFVP?=
 =?utf-8?B?N2h3MUI4VlIvdWlFZmRSbitpeEJXU2ZZRjBKQXdIT3pEaW5RdldNdUJQc2FZ?=
 =?utf-8?B?TE5WUDJmMlc5UDZIbkNMTVVMMGp0ekpHS2d6MmVQL3B0eTlmMi9ZV2pTVUJm?=
 =?utf-8?B?aFllb1ozeGNEaGRoM3JYT25QMU5EOUZWaXBRTzB6a09hM0xkNXl3c3BjeVZK?=
 =?utf-8?B?TkE0bXd3TURuWlBFMkNGWWRrUXpSSXJ0NnNkamh6QUdZT05OMzJ2TGVzRlAr?=
 =?utf-8?B?U0Q2c2NWbkl5OHlHSUhtd1pXd0pHM2dYUzNTVmMxUDhxRnZWdU12UjY0dUJ2?=
 =?utf-8?B?ckNkb01mZUtldldoVEVqR2FRcGE2RWM5OUZuWGY3SStzSC9sL2ZvQ1BGKzhN?=
 =?utf-8?B?Z3UrczhvYVF6bDEwejNUeXJZWjhrQzdJY2VNRlBzbGxXMXJwVXpYVll0UlQr?=
 =?utf-8?B?c05qTnJVN2g2MmhxOWgraWxRZ0Y5QTQ5b0hiK2d2U1U2UjdjTUg0bHJhVkNH?=
 =?utf-8?B?UnNtU09CZXFsSE5ETnV2cjZYUVdvN2ZxVUNKeS9YWVRQZHhOMktQazIyL281?=
 =?utf-8?B?QWFWMHlVSWV6VForYlNKc1YxbFZqWmdkQktFc2o5bmJpMXpTNno4M1Z0eDNV?=
 =?utf-8?B?dTZtLzRNNnBNZlkzcU5ucWtGV1htWWpRdVVzaU1ZTVVsY05hZGJLTS9KRUVx?=
 =?utf-8?Q?UcAwisOz/esAzeM8aA?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afbec0df-f2ce-47b4-2cb8-08ded8d344ca
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2026 07:18:23.9324
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SWRMWe1jB7LaZauD6E/1ZSDnkQISFdwFvcgho++oA5D3iETZkIr5TjkrRadGEMsR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR12MB9505
X-Spamd-Bar: ----
Message-ID-Hash: HMYDDLHOXXGIQRN5SOFLJV6DEARZEFDS
X-Message-ID-Hash: HMYDDLHOXXGIQRN5SOFLJV6DEARZEFDS
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Shuah Khan <skhan@linuxfoundation.org>, linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: docs: remove invalid struct member
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HMYDDLHOXXGIQRN5SOFLJV6DEARZEFDS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:nico.antinori.7@gmail.com,m:sumit.semwal@linaro.org,m:skhan@linuxfoundation.org,m:linux-kernel@vger.kernel.org,m:linux-kernel-mentees@lists.linux.dev,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:nicoantinori7@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:from_mime,amd.com:email,amd.com:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC39C6FF7B6

T24gNy8yLzI2IDE5OjEyLCBOaWNvbMOhcyBBbnRpbm9yaSB3cm90ZToNCj4gSW4gdGhlIHN0cnVj
dHMgZG1hX2ZlbmNlX2FycmF5IGFuZCBkbWFfZmVuY2VfY2hhaW4sIHRoZSBmaWVsZCAnbG9jaycN
Cj4gaGFzIGJlZW4gcmVtb3ZlZCwgYnV0IGl0cyBkb2N1bWVudGF0aW9uIGNvbW1lbnQgcmVtYWlu
ZWQuIFJlbW92ZSB0aGUNCj4gc3RhbGUgZGVzY3JpcHRpb25zIHRvIGNsZWFyIHVwIHRoZSBmb2xs
b3dpbmcga2VybmVsLWRvYyB3YXJuaW5nczoNCj4gDQo+IFdBUk5JTkc6IC4vaW5jbHVkZS9saW51
eC9kbWEtZmVuY2UtYXJyYXkuaDo0NyBFeGNlc3Mgc3RydWN0IG1lbWJlciAnbG9jaycgZGVzY3Jp
cHRpb24gaW4gJ2RtYV9mZW5jZV9hcnJheScNCj4gV0FSTklORzogLi9pbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS1hcnJheS5oOjQ3IEV4Y2VzcyBzdHJ1Y3QgbWVtYmVyICdsb2NrJyBkZXNjcmlwdGlv
biBpbiAnZG1hX2ZlbmNlX2FycmF5Jw0KPiBXQVJOSU5HOiAuL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLWNoYWluLmg6NDggRXhjZXNzIHN0cnVjdCBtZW1iZXIgJ2xvY2snIGRlc2NyaXB0aW9uIGlu
ICdkbWFfZmVuY2VfY2hhaW4nDQo+IFdBUk5JTkc6IC4vaW5jbHVkZS9saW51eC9kbWEtZmVuY2Ut
Y2hhaW4uaDo0OCBFeGNlc3Mgc3RydWN0IG1lbWJlciAnbG9jaycgZGVzY3JpcHRpb24gaW4gJ2Rt
YV9mZW5jZV9jaGFpbicNCj4gDQo+IEZpeGVzOiA1OTQzMjQzOTE0YjkgKCJkbWEtYnVmOiB1c2Ug
aW5saW5lIGxvY2sgZm9yIHRoZSBkbWEtZmVuY2UtYXJyYXkiKQ0KPiBGaXhlczogYTQwOGMwY2Ew
YzQxICgiZG1hLWJ1ZjogdXNlIGlubGluZSBsb2NrIGZvciB0aGUgZG1hLWZlbmNlLWNoYWluIikN
Cj4gU2lnbmVkLW9mZi1ieTogTmljb2zDoXMgQW50aW5vcmkgPG5pY28uYW50aW5vcmkuN0BnbWFp
bC5jb20+DQoNClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQoNCkdvaW5nIHRvIHB1c2ggdGhhdCB0byBkcm0tbWlzYy1uZXh0IGxhdGVyIHRv
ZGF5Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IC0tLQ0KPiAgaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UtYXJyYXkuaCB8IDEgLQ0KPiAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtY2hhaW4u
aCB8IDEgLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmggYi9pbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS1hcnJheS5oDQo+IGluZGV4IDFiMWQ4NzU3OWMzOC4uMGM0OWQ3Y2NlZmI2IDEwMDY0
NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oDQo+ICsrKyBiL2luY2x1
ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmgNCj4gQEAgLTI4LDcgKzI4LDYgQEAgc3RydWN0IGRt
YV9mZW5jZV9hcnJheV9jYiB7DQo+ICAvKioNCj4gICAqIHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkg
LSBmZW5jZSB0byByZXByZXNlbnQgYW4gYXJyYXkgb2YgZmVuY2VzDQo+ICAgKiBAYmFzZTogZmVu
Y2UgYmFzZSBjbGFzcw0KPiAtICogQGxvY2s6IHNwaW5sb2NrIGZvciBmZW5jZSBoYW5kbGluZw0K
PiAgICogQG51bV9mZW5jZXM6IG51bWJlciBvZiBmZW5jZXMgaW4gdGhlIGFycmF5DQo+ICAgKiBA
bnVtX3BlbmRpbmc6IGZlbmNlcyBpbiB0aGUgYXJyYXkgc3RpbGwgcGVuZGluZw0KPiAgICogQGZl
bmNlczogYXJyYXkgb2YgdGhlIGZlbmNlcw0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UtY2hhaW4uaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWNoYWluLmgNCj4gaW5k
ZXggZGYzYmVhZGYxNTE1Li40MjI4OWY1MDUxNjQgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGlu
dXgvZG1hLWZlbmNlLWNoYWluLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtY2hh
aW4uaA0KPiBAQCAtMjAsNyArMjAsNiBAQA0KPiAgICogQHByZXY6IHByZXZpb3VzIGZlbmNlIG9m
IHRoZSBjaGFpbg0KPiAgICogQHByZXZfc2Vxbm86IG9yaWdpbmFsIHByZXZpb3VzIHNlcW5vIGJl
Zm9yZSBnYXJiYWdlIGNvbGxlY3Rpb24NCj4gICAqIEBmZW5jZTogZW5jYXBzdWxhdGVkIGZlbmNl
DQo+IC0gKiBAbG9jazogc3BpbmxvY2sgZm9yIGZlbmNlIGhhbmRsaW5nDQo+ICAgKi8NCj4gIHN0
cnVjdCBkbWFfZmVuY2VfY2hhaW4gew0KPiAgICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgYmFzZTsN
Cj4gLS0NCj4gMi40Ny4zDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
