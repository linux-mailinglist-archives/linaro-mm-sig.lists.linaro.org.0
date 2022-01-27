Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4909B49DC25
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 09:03:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7DE18401DD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 08:03:20 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2069.outbound.protection.outlook.com [40.107.237.69])
	by lists.linaro.org (Postfix) with ESMTPS id DB2003EE93
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 08:03:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SuTRizXua4ajtOax59GcvnydUvJFTGU5ajOyzMqR+BOtbACbr37AOHJZq+y/JlJAsaaonb81cvx4R1iwc40GFsSFfaX5mra3kUTy4ljd+4t7JO80gmwb+13XrmIKwTeHN8lenUHY5bfoMPUj8EiBXEuNkDM5bP9FQjkb1UFRBGlPwzq2FLQfgZ2q2/IM9PGW6/YorRgygk6pRpQkSfV9Wwwy+cCcQfeMoyY9p9UMl9vNI2WvRpTnKtp3xyNBe9u0bTsgjSXgnH54hj2dx+GI8ZQXxoFVUVHiXdn1vPichc6TM/jHXIDiplifb66s1outTjZvZ23lYyCfU13mkg/67w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AR+EDFGOzsUW5LhvTdY3qjkB58bO4nC39U+i2bVySE0=;
 b=XPNIYS5gszOwOrSfb+xa7MuEElMPwtp+wobYff+kupiDypnUcby70BwDODypeh/yF9LVg5CU9lr3wsAOmkAGduhLNOQZM8dTcAQXqekNOmVhlmteX6r8+UzzJf6Jh80Sn4N/fZScXq8WG9BcrjE/exs+dCqzcUv3m5bFYMKHopUm6sM6wtvVhKkhQ37pG+XhvgxF58sKfZcg4krfRQC6l/Uh+OXqedJDeJSHsulygm7ZZ4SpzgoFrGN0HJmdJLLeib07aVv9nZvNoWkDUj60F7UFcB4ciSvQP8gV2skcA8e3Hxpxs0n3mY+UDl0uiDhPQbpQCAB9V1OIeL+PhhfoKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AR+EDFGOzsUW5LhvTdY3qjkB58bO4nC39U+i2bVySE0=;
 b=kk8bFkFcOFFlpb3qCJpRv5DuEZ86rLUk0+UfHBys+MkpsOeuU/dOGRCAycZlcQpBI55W3IsQP+XvLmHy5nP2x6R/im0nf/3OKDRL24MyLimTunSI9da/pvGdZVLsw7qulk/F8z45cgQBjh5GEU/FSNuyjB4G9GNQmsyuXJe3biY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CO6PR12MB5473.namprd12.prod.outlook.com (2603:10b6:303:13e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Thu, 27 Jan
 2022 08:03:06 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d8e7:e6b0:d63c:4a21]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d8e7:e6b0:d63c:4a21%5]) with mapi id 15.20.4909.019; Thu, 27 Jan 2022
 08:03:06 +0000
Message-ID: <3066c6a7-fc73-d34d-d209-a3ff6818dfb6@amd.com>
Date: Thu, 27 Jan 2022 09:02:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-3-lucas.demarchi@intel.com>
 <f0dbdcc0-13b5-c484-0bf3-a1f8c3e48954@amd.com>
 <20220127075728.ygwgorhnrwaocdqv@ldmartin-desk2>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220127075728.ygwgorhnrwaocdqv@ldmartin-desk2>
X-ClientProxiedBy: AS8P250CA0029.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:330::34) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9e0245dc-f281-44e1-032e-08d9e16b735e
X-MS-TrafficTypeDiagnostic: CO6PR12MB5473:EE_
X-Microsoft-Antispam-PRVS: 
	<CO6PR12MB5473DD5BC44AB7CEF7AC1EAE83219@CO6PR12MB5473.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LX8U+OTeYsy2Visv2MIflc5t5HOnB1qYPCwWEL3dn92t2debJgxL/q3CASlBXj8MSRpGs3Z8fpFtaIv05OlRgsHQb1D3QppAmEHUXpEHVZ5/RDq0fnPx3LONfMZxQdyexz/7h8YYqqh69fVUst6UHBmZM6PoCJur/fDIc0CdsRHp2KbI20ZnpWXp0t1AzvtUHPXwVsEWf3tYPF6UdYFj1ujDCFSKmvEwO5AzA4bWqMi94CrOq75kta/v/bOJB9EORhk4ogK6AbVnPoDjZHLPJ6PB9RgG8TOLtJeBM9D2TEOgWbVlM6aWmqJT6sUbcM/y2VpZRyI1zkkWgqUAClCNXtw1nJQYN/hSZtQLem1ALJtYH333Ita7KojyKr3+8u3cx4iHn3OagaCPdkibi9C9CA149XeZAgajpbFXBPIIl9+TzLlmieyP/JZcgGOkDYNL8hYn8QQVzhgX9nf5IQBycVinVtY9AFsERV8VV5WuKFF9PmwfEPL+qnMSLH06szigE1v6wShUECYIDHxykd1aEaXhelrqh9Dvn9C6SFAgBnNjJ8U0VgH51Yp8nN8p2qr5Toho2cTYwK3b7hwOc/U+uK2ODWOwsutHdnDq2e8I9Z1MqVV4+hqRPBEWnwSoUshykPchr0Hrp6DyvMTTLQQUTfj+vEo4+hxxei6T9huoxuMbDeuJnbRtiljR/UyWKtKrxFP8C/xw0PAkEJDXv4QnTFoOeaoo6tdgoo5YjvBdcARjxyJifpIC6njt/MBuVMUT
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(26005)(2616005)(66556008)(66476007)(186003)(8936002)(8676002)(316002)(66946007)(6506007)(2906002)(31696002)(38100700002)(86362001)(31686004)(36756003)(6486002)(5660300002)(66574015)(508600001)(6916009)(6512007)(4326008)(6666004)(43740500002)(45980500001)(20210929001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TE0xUVJYMFRvVnY3TzRLWjFSLzQvUmRiRWlJZzd4ZVM0anRHb0hsMWVkVVFo?=
 =?utf-8?B?NFZxeWZ2NFM1ZDBQeDB3QTBnUVlXNzFVSWxGa3I2N0ZXNjIxUXR0WXNrUm41?=
 =?utf-8?B?YzFHNlBBbWh1NWJRV0ZvTnV3S2FWdHVRMjJCM0trcHdEV2tlTzgwT1hWWE8z?=
 =?utf-8?B?WkoxTjVrSElrNG5XSkthWDZ1NlRnZVhRUDVQbDVZQWg3aVdNZ2d6aWswWFZF?=
 =?utf-8?B?d1prNXVEL1N1R0RoVktyeVc0UEorTWhmV0R6aUo2QzBPNzRlenBnMDhISFBC?=
 =?utf-8?B?SWgzaTN1M21VSDIwTTEyRmxadTlUTSt5Mmo4c0h5YXRjQk5UV05VYmYyZmJz?=
 =?utf-8?B?cVNJekF3WHFJTTBzWTc1aTdkYmlkbzV3dFN6ZURTN00zR2xBTUxQa3dwU0pM?=
 =?utf-8?B?YXVKUmNsSEdXbjdsby9xaUlUMnhqMzlVNngxRFM5eFZ6YzV2N0NET2RGNm1N?=
 =?utf-8?B?OW5wYlMyZFEvMmFmck5SRVo1NE5heHBISnBCVWpScXNva3pmN3A5WXpTUWcr?=
 =?utf-8?B?cHFXQU1BMVdEME9BZzc3aHl5VzZnK3NKcTZNaEpCNXB6UEEvcTZvUHdyY3pG?=
 =?utf-8?B?TTl5Wm10ZXBHQSt1N1VQaDlpaWQ5ek1RS2NqQWZza0NSRHhOb3o2aG9ZVDVE?=
 =?utf-8?B?VFVwM0pVMnJFY2pkQkplN1ZYWjRaeTNROG1vYSthbklTd1BIbmVCeGVSeVRX?=
 =?utf-8?B?LzY0K0FjakZDeXpybm1Xb3NtMXlKWFU5dktxSDNML2ZiYUJrVS9Xa0sxM09y?=
 =?utf-8?B?TW43TWJKR1BUZlh4WEU3SjZnMzgwY1hKanl2cEJSeXVCNGlBZDl5a2lnSWdr?=
 =?utf-8?B?eE93akFEWHFQdDZZYnBhS1d5MFJsUjlMbkR0SFZjL0M1MEFuQWErc3VuV1B2?=
 =?utf-8?B?TVpjQnJTMHFMZmNGVE9NUWp6b0oyWTlnK05YcUUxUHY3bWJzRnk1UVJSZGtt?=
 =?utf-8?B?VHFtM1FpclJIdXVlUDUrR2p1M3RKNmx1aUoyTFlJMTZyWWpVOHRQck5aa0lx?=
 =?utf-8?B?QkpUdndYV2c4N2RBQWViQ3hhNHBmTlN1K2lma0thUStrVGFiVllsV041Qm9S?=
 =?utf-8?B?MWNlNTdGN1YxUzI2R2h4THRTclRrZjlOUWl2amdrQ2o3TUNGMHYxMmIwY0ZF?=
 =?utf-8?B?M252bmpKd09vZ3AweVhJOVFSYVV5ZTBsRVZXQW9wcjJQN2U4cVZBUEdhNTFG?=
 =?utf-8?B?OVg4U0s0NVdBOExwYThCd3NiUXYxSGZSOVhMbEhVYXppNnhNNU9hOEpnLzJq?=
 =?utf-8?B?S01IM3YvclgrTXdES1BsSjRPU2tHNXFIV0ZZSUJxcW1TS05EVkZFY05UaGlJ?=
 =?utf-8?B?ai9RdHU3WVZod2ZXNDBoRWFDUHM5Tk9WbW9VZ1ZIby9tOU5wMkxaZkFsbFE1?=
 =?utf-8?B?dGlHdWNsZm9vT01MS2JseDlrOERsWXpaQStZTVpEL01ZSUhDRVphVENzNFV3?=
 =?utf-8?B?SWVxWUg1cHYzMlZqbkNRWWdpbUg1dWh0ZGJydm5qMGZqN2poQ0tYWDJKMWI3?=
 =?utf-8?B?STU2MERnbG8zTmZKQ1ZYbG1SK1F4UW5qcjQvMlNYdWFQdlBUVGVCdHNyV2F2?=
 =?utf-8?B?RFRrTlh0SVdVZkptMW5EU3dZeW5jU1A4OGd2WXZ4MGJ1dUNVdXBDU0h4MEJu?=
 =?utf-8?B?UTFJNzI4eHFNNVpJMTNzVlJ1UTl2RnplV3B6TnZoTjdyaDNWWmQ0b1M2ald3?=
 =?utf-8?B?dzQ5eVFiWkVmcGJoclZlTkZTMmFQd1VQZkxTQ2lhVGl6NHdQSEltRURrbTRx?=
 =?utf-8?B?QzdtZ1l1dUVML1VITkFzRTNaTWx5eWF5K3VrV0ZSd3dOVU96ZlpoY2VZMC9H?=
 =?utf-8?B?RXl6bnAwSXFweVlsTzRWdWQxTjZBMWcvUkhzRFNlTlg1UjladHZLK3B3RTYz?=
 =?utf-8?B?SDhlbDdHQ3VBYXBGOENyN3IvRFRLM3ZtMm1UUEIyUnJVV2pOaDIwYVMyUEhU?=
 =?utf-8?B?TGZoWVdDNTJlejI1a0dBWmdzcG1aU29YbDdWMnVrV0dBUHZpejFXd2lWVGt2?=
 =?utf-8?B?akRWeEU4c2ZiMkcwQUcyV0x6R0NUd09ibjNUelNoa01aUlZMQ1ZsUjF0N2Zy?=
 =?utf-8?B?YzJvcVhod2NrempyOExrdTMzc095Vm8rd0phYXcyQmhhenlRaERQbEw2SUtG?=
 =?utf-8?Q?S9Cc=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e0245dc-f281-44e1-032e-08d9e16b735e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2022 08:03:06.4802
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ev7j0D85yEiTy+bY73916INA6q54x5FghEEwvXHcvtxFMo+fWkrbRtMUowMpQ/DU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR12MB5473
Message-ID-Hash: YPSKZ4LB4UBYBNNWLJVPLHPUM2RW3BB3
X-Message-ID-Hash: YPSKZ4LB4UBYBNNWLJVPLHPUM2RW3BB3
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YPSKZ4LB4UBYBNNWLJVPLHPUM2RW3BB3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjcuMDEuMjIgdW0gMDg6NTcgc2NocmllYiBMdWNhcyBEZSBNYXJjaGk6DQo+IE9uIFRodSwg
SmFuIDI3LCAyMDIyIGF0IDA4OjI3OjExQU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+PiBBbSAyNi4wMS4yMiB1bSAyMTozNiBzY2hyaWViIEx1Y2FzIERlIE1hcmNoaToNCj4+PiBX
aGVuIGRtYV9idWZfbWFwIHN0cnVjdCBpcyBwYXNzZWQgYXJvdW5kLCBpdCdzIHVzZWZ1bCB0byBi
ZSBhYmxlIHRvDQo+Pj4gaW5pdGlhbGl6ZSBhIHNlY29uZCBtYXAgdGhhdCB0YWtlcyBjYXJlIG9m
IHJlYWRpbmcvd3JpdGluZyB0byBhbiBvZmZzZXQNCj4+PiBvZiB0aGUgb3JpZ2luYWwgbWFwLg0K
Pj4+DQo+Pj4gQWRkIGEgaGVscGVyIHRoYXQgY29waWVzIHRoZSBzdHJ1Y3QgYW5kIGFkZCB0aGUg
b2Zmc2V0IHRvIHRoZSBwcm9wZXINCj4+PiBhZGRyZXNzLg0KPj4NCj4+IFdlbGwgd2hhdCB5b3Ug
cHJvcG9zZSBoZXJlIGNhbiBsZWFkIHRvIGFsbCBraW5kIG9mIHByb2JsZW1zIGFuZCBpcyANCj4+
IHJhdGhlciBiYWQgZGVzaWduIGFzIGZhciBhcyBJIGNhbiBzZWUuDQo+Pg0KPj4gVGhlIHN0cnVj
dCBkbWFfYnVmX21hcCBpcyBvbmx5IHRvIGJlIGZpbGxlZCBpbiBieSB0aGUgZXhwb3J0ZXIgYW5k
IA0KPj4gc2hvdWxkIG5vdCBiZSBtb2RpZmllZCBpbiB0aGlzIHdheSBieSB0aGUgaW1wb3J0ZXIu
DQo+DQo+IGh1bW4uLi4gbm90IHN1cmUgaWYgSSB3YXPCoCBjbGVhci4gVGhlcmUgaXMgbm8gaW1w
b3J0ZXIgYW5kIGV4cG9ydGVyIGhlcmUuDQoNClllYWgsIGFuZCBleGFjdGx5IHRoYXQncyB3aGF0
IEknbSBwb2ludGluZyBvdXQgYXMgcHJvYmxlbSBoZXJlLg0KDQpZb3UgYXJlIHVzaW5nIHRoZSBp
bnRlciBkcml2ZXIgZnJhbWV3b3JrIGZvciBzb21ldGhpbmcgaW50ZXJuYWwgdG8gdGhlIA0KZHJp
dmVyLiBUaGF0IGlzIGFuIGFic29sdXRlbHkgY2xlYXIgTkFLIQ0KDQpXZSBjb3VsZCBkaXNjdXNz
IHRoYXQsIGJ1dCB5b3UgZ3V5cyBhcmUganVzdCBzZW5kaW5nIGFyb3VuZCBwYXRjaGVzIHRvIA0K
ZG8gdGhpcyB3aXRob3V0IGFueSBjb25zZW5zdXMgdGhhdCB0aGlzIGlzIGEgZ29vZCBpZGVhLg0K
DQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQoNCj4gVGhlcmUgaXMgYSByb2xlIGRlbGVnYXRpb24g
b24gZmlsbGluZyBvdXQgYW5kIHJlYWRpbmcgYSBidWZmZXIgd2hlbg0KPiB0aGF0IGJ1ZmZlciBy
ZXByZXNlbnRzIGEgc3RydWN0IGxheW91dC4NCj4NCj4gc3RydWN0IGJsYSB7DQo+IMKgwqDCoMKg
aW50IGE7DQo+IMKgwqDCoMKgaW50IGI7DQo+IMKgwqDCoMKgaW50IGM7DQo+IMKgwqDCoMKgc3Ry
dWN0IGZvbyBmb287DQo+IMKgwqDCoMKgc3RydWN0IGJhciBiYXI7DQo+IMKgwqDCoMKgaW50IGQ7
DQo+IH0NCj4NCj4NCj4gVGhpcyBpbXBsZW1lbnRhdGlvbiBhbGxvd3MgeW91IHRvIGhhdmU6DQo+
DQo+IMKgwqDCoMKgZmlsbF9mb28oc3RydWN0IGRtYV9idWZfbWFwICpibGFfbWFwKSB7IC4uLiB9
DQo+IMKgwqDCoMKgZmlsbF9iYXIoc3RydWN0IGRtYV9idWZfbWFwICpibGFfbWFwKSB7IC4uLiB9
DQo+DQo+IGFuZCB0aGUgZmlyc3QgdGhpbmcgdGhlc2UgZG8gaXMgdG8gbWFrZSBzdXJlIHRoZSBt
YXAgaXQncyBwb2ludGluZyB0bw0KPiBpcyByZWxhdGl2ZSB0byB0aGUgc3RydWN0IGl0J3Mgc3Vw
cG9zZWQgdG8gd3JpdGUvcmVhZC4gT3RoZXJ3aXNlIHlvdSdyZQ0KPiBzdWdnZXN0aW5nIGV2ZXJ5
dGhpbmcgdG8gYmUgcmVsYXRpdmUgdG8gc3RydWN0IGJsYSwgb3IgdG8gZG8gdGhlIHNhbWUNCj4g
SSdtIGRvaW5nIGl0LCBidXQgSU1PIG1vcmUgcHJvbmUgdG8gZXJyb3I6DQo+DQo+IMKgwqDCoMKg
c3RydWN0IGRtYV9idWZfbWFwIG1hcCA9ICpibGFfbWFwOw0KPiDCoMKgwqDCoGRtYV9idWZfbWFw
X2luY3IobWFwLCBvZmZzZXRvZiguLi4pKTsNCj4NCj4gSU1PIHRoaXMgY29uc3RydWN0IGlzIHdv
cnNlIGJlY2F1c2UgYXQgYSBwb2ludCBpbiB0aW1lIGluIHRoZSBmdW5jdGlvbg0KPiB0aGUgbWFw
IHdhcyBwb2ludGluZyB0byB0aGUgd3JvbmcgdGhpbmcgdGhlIGZ1bmN0aW9uIHdhcyBzdXBwb3Nl
ZCB0bw0KPiByZWFkL3dyaXRlLg0KPg0KPiBJdCdzIGFsc28gdXNlZnVsIHdoZW4gdGhlIGZ1bmN0
aW9uIGhhcyBkb3VibGUgZHV0eSwgdXBkYXRpbmcgYSBnbG9iYWwNCj4gcGFydCBvZiB0aGUgc3Ry
dWN0IGFuZCBhIHRhYmxlIGluc2lkZSBpdCAoc2VlIGV4YW1wbGUgaW4gcGF0Y2ggNikNCj4NCj4g
dGhhbmtzDQo+IEx1Y2FzIERlIE1hcmNoaQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
