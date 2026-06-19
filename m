Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id M6Y0BlEcNWqbnAYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2026 12:39:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8906B6A5439
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2026 12:39:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=0T5qQI2z;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E20640AF3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2026 10:39:11 +0000 (UTC)
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012017.outbound.protection.outlook.com [52.101.48.17])
	by lists.linaro.org (Postfix) with ESMTPS id D881440A42
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2026 10:39:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=czYXy8kd75IooKG+nBZC3RkAw7Hfnnv050g1CoTxyQ1bN4t0Y++9aZGh9IMqHGS4/4h6RfBDrPHeE5mtMmbp0cprUUCl3+lcyakbGtrsDLlSM0VLDAi3Sg0Q9sNw/1KG4a85qxu1OeBafik8ULD6lN09XJROAhS2bnvfncZy3j9p45pWcqmW2tFM1DICgwe5CzENQIG2a+/qY7hFmzH/N1TuASxj/YlR6fArz4PPA/gWfUqNXzFa/njOeu3LLGcuYzghSd71+cqSLuzXX1geMZRgsuPDqWOoK6q+fonZM2O/tuu8h14ZVe94x7NrwYjkoIbXfgDhQHLmYd3Iv9Ktdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HUbf0pFxQyBXR81tHl8xNKe1rr/LLfE9Idzo2+AoHI8=;
 b=DiBWYu8HJkWa9WSgSH1NRwNL2nb89syEW6I+8/8r/gR3JRQotoum7taFoAXqa6z/1oHCPhmLIeWAeGCzFAxRIIiYl59iCn5kYZCpOoRxkSj8YLNKZMTOoaI9mVNYuEiXhbqtz5WLxAjXnqO4j+bfYLzVSddEd4lWbqpcVmA3OZqumpLaxr04xPS3VUNRFKBdhkkFhhvJ2Clb4nMkX5tM9FdDF0GeX0fTwfEbgFSPa8X7n91Z0Xon26nLsF/Zm6dI4jvB8PUHahFv4CRru+VqBKQd9kljBE27h00pfJW0ts18XB4VWmcBjTn0BxO5P2uEnpH2FJwrwECzZEbzXi+IaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HUbf0pFxQyBXR81tHl8xNKe1rr/LLfE9Idzo2+AoHI8=;
 b=0T5qQI2zeeP1kPMwqIdh1H+SW6h0BUwjGkeHRgoC3WZYZNVytFGDRlmyr0BXyk9WaIRrBsRp9YnfRYKCS3Go7TuDVkxRIJLxbreDEr0p2ciNenUKAK22Avrdt7Cz1FKKeqNbdTjyKSqHoMwS6+XqiXacv088ZeIfQdMoQ3xOrtA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH1PPFC908D89D1.namprd12.prod.outlook.com (2603:10b6:61f:fc00::623) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Fri, 19 Jun
 2026 10:38:59 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0113.015; Fri, 19 Jun 2026
 10:38:59 +0000
Message-ID: <9503e60a-5e8a-40f3-b5cf-1d8d0f71c9a5@amd.com>
Date: Fri, 19 Jun 2026 12:38:54 +0200
User-Agent: Mozilla Thunderbird
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Danilo Krummrich
 <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>
References: <16fb40ded203d1e2b72f4eeecad3fd0c0d23ad6f.1781863296.git.geert@linux-m68k.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <16fb40ded203d1e2b72f4eeecad3fd0c0d23ad6f.1781863296.git.geert@linux-m68k.org>
X-ClientProxiedBy: BL1PR13CA0391.namprd13.prod.outlook.com
 (2603:10b6:208:2c2::6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH1PPFC908D89D1:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ddc65a3-9eab-411e-8dc5-08decdeef8f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|23010399003|1800799024|7416014|366016|376014|6133799003|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 
	U8OKUU6BSX6roYjwBhWXfBORMlOt5O105zr/C+z4Odw3LZhkVNiV5EMUaD5Lq2rU3jEH9fJWfLtXFYDM9Fir3QppSg9FkPViQqAm3yQZgsqwNfmPQBx2gdA21UInAvk9rBeoG1dIDFTnKPzSRv0uwchFj0t+lqEPA9vQ/tvPmK0Pqum+n7IEmo1R1dp2Ac3GSBbeqCWqgijW+KuPTT44rca+ihBJqfpJtItIzbk8oUSqGav/rnlr1To2xKjwfst+TQlq9maCj3KisO6/VyHlMSM0r8J831Z3+dhvL9KFcvmNzCrWqDlabk54dd1kOhUelg/YMQt89P+r0BCXLWaONtF1swzSzmcwzJO4j7yCdh2Vwc2E8dEr/znbznZOB49KXE59TfOpSp49j+61hZoBez3FdJiIEAB5dD+hmQccxDQZJ5vbR4i5EyKbsX29mQhgcRaAZ89UzB/zJWOJsXYOesGuHV1jngz88IGfFn5Iqyp9DJlpsImZkJB3l6WiLUVImW4cWoEfLFOzBRf2YHTAEkTYELyU3/09aELVvejo3/dbl5uBdETWc9iVFW0T2Ybv6zjbHn7fwtKM4nvguwwh7iym4iVmFvra8aAsu0QipW9lFOs5bgajn7p3kX0pOrfFqoc4wOMpFl3eWFo8keSs/gT6JKEwky7l9Plk7jfBw0g=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(7416014)(366016)(376014)(6133799003)(18002099003)(22082099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NVpLYVUxTjRNalErRWp4Nmh5OWJTTjZvWFkyMVRrSHJPU045MkhIZGt4UTgr?=
 =?utf-8?B?cnVhZzc3V3BiL2RBK25RbUc4QndRT0ExM2hmYS9Pa3c5R0NPZ2V0ZzVGMFdn?=
 =?utf-8?B?NjUvR3NWaHVXYk9QdXpKOFNpYkZkWlkrVUJxUllkOEtOWG9ITDV6RVpNZTRL?=
 =?utf-8?B?M241c2tWNE9MeWhMQXg0ZWNITE9rUjVBVjZzR3czam1jcjY0dUEyemZkRjk2?=
 =?utf-8?B?L2lSUFFCTVA0MU02OEg0YkFmanc2U1QrbFdpeHJDRjRiVzRiTEZ5MkpVTHdH?=
 =?utf-8?B?U0Izc2xqdE4vTzhXcmJpTzVHWkRBTmVTS2k1OXZyTmdzT1JBV2JhWWg4S3hF?=
 =?utf-8?B?V05XMEpBOWFRaGp6WGZYeFA3YU1tODRnQ2taRFcxTjFoa1p3YU13NkUxZUZW?=
 =?utf-8?B?dkxBOXdGNDJYb1YzWnc2Nm9sSGxKc2s3OVo4OE1JbENTOEVORjlUckUveGQz?=
 =?utf-8?B?eUlTd1dxa2djZllWY092dHdEOUFZVnRXbkJyN3VpdGpDTVB1cUpiV0t3NHA1?=
 =?utf-8?B?bktHaDg2TDhoQm5WRUIyTlFzL2JlRytLNjFlMGgzMlZCNWJGOUNERzZQYTBz?=
 =?utf-8?B?V2F0Ry9GQ2VtcHQvZ0xCYUpueTdmWXIwU3hReFpWVkZ1MEp1akZidXNnbG43?=
 =?utf-8?B?dXpqRmZuWWxlZjRFNi9keDhTbU5KQ2hjMitaZXpYUzR4ajZhU21nNTI5a0xq?=
 =?utf-8?B?dmhiTExHWWdmL1E3U092NWNhS0h4Y0dCMi9PQU5aUW5HOXpxNUJtR2xsdU0v?=
 =?utf-8?B?N0Fab1JMa3ZiNmpNU1BkZE9NaWpGZElBZkRMYzJvNXhES3hyTGxCU3A0dTF2?=
 =?utf-8?B?a0tkZ1lrMHlVclhaTmExTzIrVVB3TlJLODU0M0xTaWlKL2Q2YlRjbkdHVlor?=
 =?utf-8?B?dmhMOWk3b09rTGxYTTRJLzY0VURBa2JiWnBwRVV3S3laUUlEc3NTMy9vazVT?=
 =?utf-8?B?NTUyckRQSXowNFVKZ3podThmNlQxcCtwUzl4dlZLRUlGN1FmVUVZTGVNR3RX?=
 =?utf-8?B?eW1oL1pyTFZ3VW11aW51VElla2JYVjl1UHZrSmdsbytFbHJWdTFnblB2bW5u?=
 =?utf-8?B?ZVhxcVkxM3l0Y1BPTGprVWxlRlFRekk5bVFscjMxaHJWN0FZS1ZQZ04zVkpk?=
 =?utf-8?B?bGlvbmR2Z1dJczk2Ty9WaWJBKyt0Y0NpMTUrUDBQT0hJV3dHQVcwYTh6aUF4?=
 =?utf-8?B?WkFhenk1RDl4V3A2VERKWGZ3SldTVC9wRkVyUWJxeEpza1c1UWowcjFpVnVK?=
 =?utf-8?B?Nit1SUN5elpXT2NWMmgzb3VuTFVBbHY4Sml3eDR2RVp5WlhlOE9UY25IQ0xE?=
 =?utf-8?B?UmxXZldXbWl6RVFaL0t5cFVIWXhRbUV3QlAwUWZmbUhic3l1Y1FlSjdwOTNw?=
 =?utf-8?B?aCthWGFNdnVRMnVJZnI2cExxTkpCY2VOVllNVG1ITE1XRTZ0VFlldmUzemdm?=
 =?utf-8?B?WUdDVVYvRHpyOUt3dmtORCtKZ21wd0IvRUVPM20yMXZWcTZlSFdPdHJ3aTJx?=
 =?utf-8?B?ZHY0REJENUs1SWt2QUNtT29YdCtVR3JWUTBpY1Z5b1ZZVGJWRDJwSUNURWVW?=
 =?utf-8?B?czZoVVRCalAzRmNIanRSLytKMXhpcHd5cEpLblU4QUtaZHkyWXUrbkI5c0FP?=
 =?utf-8?B?eHM1czFYMDZFNWVIZ0dlVTZWNU8xTEVGc3FPOE9NZ3l2L1hPNkxMS2JnQ3RR?=
 =?utf-8?B?clZQR1haSDB2c29BK2M4TE5TcDczR0QwQ0lKTFNpM1UxMktta1pIUlZOblJO?=
 =?utf-8?B?TU5OWFlMUjdXeXRXMGZOc0NmdWFoVkd1R0xiQmJseDhoNDB5aGoyUVM2eDYy?=
 =?utf-8?B?c0txWDZSRitMQjVEZlJMbndBKzNCQ0xERFUrVlRYUXBXY0VMQVcrY1N5UHNt?=
 =?utf-8?B?L09rejdyZ1NKVDJNSTJ2a3NQZnNqa0wxMHZaNHJyRGd1T3pPaCtNZms5OTZD?=
 =?utf-8?B?ZlNmNkNuS1JLckNOa0xSdkdJcVRYekNzcTZyVk1JYUlIcVp4ZHJWeHMxTllV?=
 =?utf-8?B?THlDZHlDYWNiTW1uSUFaV3Z0SW1XcUtwWWFjb1JHcmMwNFIxbnJYWUV2QzlW?=
 =?utf-8?B?RDU1M3lEZE9zUlhpeUp3ZmpZeDVxN2szeXRaN2V5bnczSzloV0g4TUxrelRi?=
 =?utf-8?B?cFl5c1FBTFJUNlloTXZhcHRYbDlJUHRwNGx2WGFETFhNZWl6Ty9QeEhRdVBw?=
 =?utf-8?B?MDlBZ1RVdDRadTJiRkZxWk9QdXlWNGNmaHZ0clZVNThsTmlzVm55UzN3b01w?=
 =?utf-8?B?S081djRCOEl1c3A3OVh3WXlDdUxkUllyRVVRK3hzOERGZDdab1czZ1Rkc2Ry?=
 =?utf-8?Q?79pW2RR/PO0x6deUEB?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ddc65a3-9eab-411e-8dc5-08decdeef8f5
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2026 10:38:59.7512
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 48p2G3ia638o34E+NfJ+8IP+NfsHoiNcxVvSsZ3+hawhVT/m+S9XcBaWr8ILc89P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH1PPFC908D89D1
X-Spamd-Bar: -----
Message-ID-Hash: TG4DBAPPSOANFR5XGZGM3VD2FB4VVFK4
X-Message-ID-Hash: TG4DBAPPSOANFR5XGZGM3VD2FB4VVFK4
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: driver-core@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] base: Remove unused DMA_FENCE_TRACE Kconfig symbol
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TG4DBAPPSOANFR5XGZGM3VD2FB4VVFK4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:geert@linux-m68k.org,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:driver-core@lists.linux.dev,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8906B6A5439

T24gNi8xOS8yNiAxMjowMywgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOg0KPiBDb21taXQgZDcy
Mjc3YjZjMzdkYjY2YiAoImRtYS1idWY6IG51a2UgRE1BX0ZFTkNFX1RSQUNFIG1hY3JvcyB2MiIp
IGluDQo+IHY1LjE2IHJlbW92ZWQgYWxsIHVzZXJzIG9mIERNQV9GRU5DRV9UUkFDRSBvbiB0aGUg
cHJlbWlzZSB0aGF0IHRoZQ0KPiBLY29uZmlnIHN5bWJvbCBkaWQgbm90IGV4aXN0LiAgQXBwYXJl
bnRseSBvbmUgZmFpbGVkIHRvIG5vdGljZSB0aGUNCj4gc3ltYm9sIGRpZCBleGlzdCBzaW5jZSBh
bG1vc3QgZml2ZSB5ZWFycyBiZWZvcmU6IGl0IHdhcyByZW5hbWVkIGZyb20NCj4gRkVOQ0VfVFJB
Q0UgdG8gRE1BX0ZFTkNFX1RSQUNFIGluIGNvbW1pdCBmNTRkMTg2NzAwNWMzMzIzICgiZG1hLWJ1
ZjoNCj4gUmVuYW1lIHN0cnVjdCBmZW5jZSB0byBkbWFfZmVuY2UiKSBpbiB2NC4xMC4NCj4gDQo+
IFRpbWUgcGFzc2VkIGJ5LCBzbyByZW1vdmUgdGhlIEtjb25maWcgc3ltYm9sLCBhcyBubyBvbmUg
c2VlbXMgdG8gaGF2ZQ0KPiBtaXNzZWQgdGhlIGZ1bmN0aW9uYWxpdHkuDQoNClllYWggdGhhdCBm
dW5jdGlvbmFsaXR5IHNob3VsZCBiZSBmdWxseSBjb3ZlcmVkIGJ5IHRyYWNlIHBvaW50cy4NCg0K
PiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsub3Jn
Pg0KDQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KDQpEbyB5b3UgaGF2ZSBjb21taXQgcmlnaHQgdG8gZHJtLW1pc2MtbmV4dCB0byBwdXNo
IHRoaXM/DQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvYmFzZS9L
Y29uZmlnIHwgOSAtLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYmFzZS9LY29uZmlnIGIvZHJpdmVycy9iYXNlL0tj
b25maWcNCj4gaW5kZXggZjdkMzg1Y2JkM2JhNGIyYi4uNDNmMjBjYTk1YTJhNmJhOSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9iYXNlL0tjb25maWcNCj4gKysrIGIvZHJpdmVycy9iYXNlL0tjb25m
aWcNCj4gQEAgLTIyMiwxNSArMjIyLDYgQEAgY29uZmlnIERNQV9TSEFSRURfQlVGRkVSDQo+ICAJ
ICBBUElzIGV4dGVuc2lvbjsgdGhlIGZpbGUncyBkZXNjcmlwdG9yIGNhbiB0aGVuIGJlIHBhc3Nl
ZCBvbiB0byBvdGhlcg0KPiAgCSAgZHJpdmVyLg0KPiAgDQo+IC1jb25maWcgRE1BX0ZFTkNFX1RS
QUNFDQo+IC0JYm9vbCAiRW5hYmxlIHZlcmJvc2UgRE1BX0ZFTkNFX1RSQUNFIG1lc3NhZ2VzIg0K
PiAtCWRlcGVuZHMgb24gRE1BX1NIQVJFRF9CVUZGRVINCj4gLQloZWxwDQo+IC0JICBFbmFibGUg
dGhlIERNQV9GRU5DRV9UUkFDRSBwcmludGtzLiBUaGlzIHdpbGwgYWRkIGV4dHJhDQo+IC0JICBz
cGFtIHRvIHRoZSBjb25zb2xlIGxvZywgYnV0IHdpbGwgbWFrZSBpdCBlYXNpZXIgdG8gZGlhZ25v
c2UNCj4gLQkgIGxvY2t1cCByZWxhdGVkIHByb2JsZW1zIGZvciBkbWEtYnVmZmVycyBzaGFyZWQg
YWNyb3NzIG11bHRpcGxlDQo+IC0JICBkZXZpY2VzLg0KPiAtDQo+ICBjb25maWcgR0VORVJJQ19B
UkNIX1RPUE9MT0dZDQo+ICAJYm9vbA0KPiAgCWhlbHANCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
