Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1163D3612
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 10:05:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F9F2606A3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 08:05:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C0A0462EA0; Fri, 23 Jul 2021 08:05:14 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C6B9B606A3;
	Fri, 23 Jul 2021 08:05:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CD87260440
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 08:05:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C969360591; Fri, 23 Jul 2021 08:05:08 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2044.outbound.protection.outlook.com [40.107.220.44])
 by lists.linaro.org (Postfix) with ESMTPS id 9FC826057D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 08:05:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PH8aya6+uDqtRF1E6mzDUXqTwAP6K9Rx7HbLog0H0EvLz/9gNQdfJFRa0hf4xwp7uSytY75dSwPTyaKlpNAliFnKrucWzUNc3piT9zX09XqhHPLt8dUcOagRab2kZRdA3VagHdtt8gYABhqort3yjcTnkJQ9RMwuP5TTT/hpKUOlKQYGMk/fQP8TgQM9WRrKgRt0bpXU6RbJ/DxYt6TRlhUGGdj4ZayAf8bMmKi2I8uWpKdzVaz5l7yGGymkTparBwFWJhmChQ0uMGxkEpDposSfOxZynQe5hm0//s15/G/I+e1737O/nmu4gktpE9aUxir/xZwx3zjC+YDzbxZHfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fzCO7jk3zFT/lkNok6A4P9/7Lm8/gRvhoPfvWbl6fBE=;
 b=ZBiY0XIkyqw3CMt+qA8Wf7y2j7mvDXxsgfbxqi+EctsiahjdQOGUTGzmpfaRMTcXBPiLKKhKnhPGu4TP8hQetCgrTlnKcofhafTe5uT0N6bfUP78t2jcpseH2kaqL/sp1Q2SpzBzEziL+Vj6gd+uRYD7vJr6MEEXnOl2oUMIJB56C+H95kh0TYa34k9A8mbqS5XqxLsaWKWl4nlZowvIgypLQc0ijN2t4Gmj+bLxKlRDrMp0FiFajELR21sgGuCogBVShnQ/CETey2NuvPiQ8+Le4EcLz5lfsGvP/A8+tNsNfoil86akz7YwFtBs6ayp1wDHuAtW4YaZpbUoiOk17g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fzCO7jk3zFT/lkNok6A4P9/7Lm8/gRvhoPfvWbl6fBE=;
 b=Hd0x3QXEjB0iT5qC1H82jJwLblUwdiicZy+g0mxem9do0CHf2bXVvHBOr/XhPtB3fb9zBLvbxrXZaz2Jbl/uzT1mR2JXeE4sLQis0nvfvogiujl0mut70SO4+vJlBEKllZ9G6On0F8j5Uwnbgq98fae7/w1H3aoHzquDkRlTCfQ=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4224.namprd12.prod.outlook.com (2603:10b6:208:1dd::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.25; Fri, 23 Jul
 2021 08:05:04 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4352.028; Fri, 23 Jul 2021
 08:05:04 +0000
To: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
References: <20210723075857.4065-1-michel@daenzer.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <f5f37693-bfe2-e52f-172b-00f4aa94dbd9@amd.com>
Date: Fri, 23 Jul 2021 10:04:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210723075857.4065-1-michel@daenzer.net>
Content-Language: en-US
X-ClientProxiedBy: PR3P189CA0022.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:52::27) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:b5eb:ae77:ac:3a23]
 (2a02:908:1252:fb60:b5eb:ae77:ac:3a23) by
 PR3P189CA0022.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:52::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.26 via Frontend Transport; Fri, 23 Jul 2021 08:05:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: daa7a4f9-1f84-4d18-6a4e-08d94db093c3
X-MS-TrafficTypeDiagnostic: MN2PR12MB4224:
X-Microsoft-Antispam-PRVS: <MN2PR12MB422426150661C659C259D15D83E59@MN2PR12MB4224.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PAOFrjuGyNBdX5BFExMNlg1rGbWqYKoza/DoIoqPGy2VNMjqmarSeLsxJtpbN6wc2VohtvfR+LeI0/ax+2VO5OBJp5qehoTaxKOdjGCuNDJI++wAxZRcALWoTgvwcDJD6Xii8kCgsg6HSZ9asxXLeIGyhRYfQ+1n+2NDGBwjxd0cpOPcX1Q5088d1VhpiukD5NP4HTTUIk+mTohBz+/fQ2oUQhOH11mjbyQmCida9/Cw8JzEZpcSA6lHIGSk6uJny8p0+Tsfj+2n1fDZmPugvL2ZwcXGfv3QOgaqYud9gnc0JLZUpJlFzSdTzoIb1NqH87lHl+hHrvqbQIduL2EjlBYVVuIFkihyk4Dhq/pAk/HxpAT1Vp1u7W6187Y8s1mng6j5Cv1i5FOO6RdGqxqJlkh0qK798h0E8r3AxJEJeF4iVlrcZlVeLFGasMilbAoDQpmP1kcH9HMRmoN69RnhO5ElcTYJ9ITP0JWIEdeBJpebC/IfCP+v9CSSUJvKL+co1jHfBkyS8B42T/pvuKt3+Sr8FPB4tZwOrKjS3BP+KSLhVOsR1klaT8x8A0IqVYKKecwJeOXV9hfsVHCPC2UGpD0eUmYDF/9ndM3abgqSLXaGQE+8qvzBjnmnNjJNoLA0081SRibXeRau9qMR/m7xSI7o106ZRCZc06kh+anmEFV38/rpW/bx9QWliDAoTAS7aIqyolHheLKjUFAmNQtdcPX4wdgrKQK1RdkgagRuhy8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(39860400002)(366004)(376002)(346002)(31696002)(6666004)(186003)(83380400001)(8676002)(31686004)(6486002)(86362001)(38100700002)(478600001)(5660300002)(66574015)(316002)(2616005)(36756003)(4326008)(6916009)(66946007)(66556008)(66476007)(8936002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2Y2cUdIdnlYK2NydFozSS9EekpoR09JTDNOVEpjc2JseWQwWnBhSjdPZkdr?=
 =?utf-8?B?WVZMYXd1ekFWUUhzTHhWbFNxaTNNTFNLdWpSUTVBQ3dHSVlIdlo2SWQ2aFZi?=
 =?utf-8?B?czdiWDNNaTFXcUtxUHZZK3FWNlpqbk5wN0ZEMkQxQ3ZUQWtxQ3Y2akdVWHNS?=
 =?utf-8?B?TjhOTUJGdGhMUnRKNmlhdDNsWW14OENTR2wyd3BLeUhzMnlreVR3Wmd2SUVm?=
 =?utf-8?B?Tm0yTUI0bnNwVGViL2VaM0lmOWpPQW1qNjFkMER5akRQOUM4VU5sT25FM1ZZ?=
 =?utf-8?B?TWZGN2dUUDJlVEdENE5ZNEVDS0ZiS05kWmdyTUk1V2JWbUJkSWJ0TFBRK1Nj?=
 =?utf-8?B?ZnpBZkRRSFhmSWpQbFFJaU9CSUdUVlBUTldGZkhpNDJmZEpxUUlBL3piM0I4?=
 =?utf-8?B?d3c1Ui9maHV6clNCOW55V1NKcnJQakRha2p2clpENFN1UlRuSjdqYW96MS9X?=
 =?utf-8?B?NXZtQTIwQ0cwZG53MWo0UHNHT0ZmZzd3eCsxd29QVHhSRG95dXVmRUt3ajFY?=
 =?utf-8?B?MHVvaXRabmFDL0hGNDhnc05JbXNOL21NcDV6N2RpMHRNTkxJTUVrUUt1MTRi?=
 =?utf-8?B?dnl1ZzV2Y2I2VDlpb2N2OUUwcUR0RmVUUWxrcUU5V0UwbDBHclJYODhPd1Jn?=
 =?utf-8?B?b2M5SU95RW54RWVNVWducjg2OTc2czA5ZlNoMHBOV1NPMnJDRzNoNlA1SUFx?=
 =?utf-8?B?SHdTR0lRdlNXOW5MdjcvTG5paVVTSkxjNGtHc0dYRXJjV215WC91RHlRT29P?=
 =?utf-8?B?MC9SNURjd1JtRk5USnlBUEZPb085SzdVMGJvMWVKR2tFVUNBek9uelBjN05s?=
 =?utf-8?B?ZTQzV3kyS2lmV3FXN0o5NmlCM0tXU21FRnlVQ2FVZkNmZW9kcm1oNUFQQlR0?=
 =?utf-8?B?Nm8wZ09GOFEzZjhVeWNiKzJHK3R2VUpRR3ZNYzB2bDZqKzhiYjNackhZWjEx?=
 =?utf-8?B?YnVQTFZ5NktGT3NRWTRkcVF0WU93ZTVkL01kUUFINDhpcHJFQkkrQTJCL1d6?=
 =?utf-8?B?L0h4S0V1cDkrVzUzak5iSi9sN1NvZlByVnRNL1ZUOENOd2g0ZlJ0bHZNSjFR?=
 =?utf-8?B?bll6UHdJUDN5bHE4aE4wcktiRUNOTkJrUVRCNDJpK0xTd2lzSS9BTmx4UVR2?=
 =?utf-8?B?a3gvUW9VS2s0ZTNsV0o4NVhFZGlnSEdEeVRvOEIwK2dyUm1SdU50bUkxZkR5?=
 =?utf-8?B?WmhRUmdURzFBdkJYOUQ0eC9MYzAzNFFwY0wvZTNTR3lEakwyczFQSjFWY09n?=
 =?utf-8?B?M2pqOG5kQTRMV2RlaTVIcWZtaFV1QzFLZGo0SDgwSVdvVi9VaTYxcm8yNVh2?=
 =?utf-8?B?bjQ3NHBVNUlDbi9IOHJPbTFObUR0bVBBdlIwMkhyL0ZEUjFrMDVqclRmWEV1?=
 =?utf-8?B?clNBSVlRMUptaGRuYUhZa0xmMW1VUW82UVBnT2hzbDNLeGZmSGhja2IwTGFH?=
 =?utf-8?B?QVNBaEhDUmd4R1UrcEdoQkZZN29McW5Dc1pBU29OejJmK0JMdlpWT2ptVVA5?=
 =?utf-8?B?cTRmbVgrQ25WYUhmMlNCcVFsSGdLdm9yUEV6S1g4bHlNZUtxSUkyVi9vQjRQ?=
 =?utf-8?B?cUk1Wk9hb2N6cUpLTGNGREFNMHIyaVZlSXpXNHBwMWVwL3VBTGkxNnJRbTJE?=
 =?utf-8?B?d3ZUTTV6OG9pQ1c1ZVdxOFRiMGk1T1FYS0JZSUd1L2xCUTZ1QXIrWDZISFYy?=
 =?utf-8?B?UHJXYUJFcjVkaVpJS21QbVFsaHpLNHo2WmIzWlNrMjB1U1piLzRnbms3Z29y?=
 =?utf-8?B?eHNZK1V4aTI3aEtNWCswOHJGZTg4UWpmb2RuL3hHYnRvdGIzdFVETXFJKzI0?=
 =?utf-8?B?NjdyYlpXSUtrRlJWcXNuNUNJT1BGSXRjL0M0UjIwVGRZOUxCcDdCeHhpRGpP?=
 =?utf-8?Q?WMLZmLZeBPPW7?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: daa7a4f9-1f84-4d18-6a4e-08d94db093c3
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2021 08:05:04.0065 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h8029NIa6XYyBSjYLR1VnSz0HSrfo7//QPy+vA9pN5Xp1PBuTK/Z6ep0+NNN5Ulz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4224
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf/poll: Get a file reference for
 outstanding fence callbacks
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjMuMDcuMjEgdW0gMDk6NTggc2NocmllYiBNaWNoZWwgRMOkbnplcjoKPiBGcm9tOiBNaWNo
ZWwgRMOkbnplciA8bWRhZW56ZXJAcmVkaGF0LmNvbT4KPgo+IFRoaXMgbWFrZXMgc3VyZSB3ZSBk
b24ndCBoaXQgdGhlCj4KPiAJQlVHX09OKGRtYWJ1Zi0+Y2JfaW4uYWN0aXZlIHx8IGRtYWJ1Zi0+
Y2Jfb3V0LmFjdGl2ZSk7Cj4KPiBpbiBkbWFfYnVmX3JlbGVhc2UsIHdoaWNoIGNvdWxkIGJlIHRy
aWdnZXJlZCBieSB1c2VyIHNwYWNlIGNsb3NpbmcgdGhlCj4gZG1hLWJ1ZiBmaWxlIGRlc2NyaXB0
aW9uIHdoaWxlIHRoZXJlIGFyZSBvdXRzdGFuZGluZyBmZW5jZSBjYWxsYmFja3MKPiBmcm9tIGRt
YV9idWZfcG9sbC4KCkkgd2FzIGFsc28gd29uZGVyaW5nIHRoZSBzYW1lIHRoaW5nIHdoaWxlIHdv
cmtpbmcgb24gdGhpcywgYnV0IHRoZW4gCnRob3VnaHQgdGhhdCB0aGUgcG9sbCBpbnRlcmZhY2Ug
d291bGQgdGFrZSBjYXJlIG9mIHRoaXMuCgo+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcK
PiBTaWduZWQtb2ZmLWJ5OiBNaWNoZWwgRMOkbnplciA8bWRhZW56ZXJAcmVkaGF0LmNvbT4KPiAt
LS0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAxOCArKysrKysrKysrKystLS0tLS0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jCj4gaW5kZXggNmM1MjBjOWJkOTNjLi5lYzI1NDk4YTk3MWYgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMKPiBAQCAtNjUsMTIgKzY1LDkgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9yZWxlYXNlKHN0
cnVjdCBkZW50cnkgKmRlbnRyeSkKPiAgIAlCVUdfT04oZG1hYnVmLT52bWFwcGluZ19jb3VudGVy
KTsKPiAgIAo+ICAgCS8qCj4gLQkgKiBBbnkgZmVuY2VzIHRoYXQgYSBkbWEtYnVmIHBvbGwgY2Fu
IHdhaXQgb24gc2hvdWxkIGJlIHNpZ25hbGVkCj4gLQkgKiBiZWZvcmUgcmVsZWFzaW5nIGRtYS1i
dWYuIFRoaXMgaXMgdGhlIHJlc3BvbnNpYmlsaXR5IG9mIGVhY2gKPiAtCSAqIGRyaXZlciB0aGF0
IHVzZXMgdGhlIHJlc2VydmF0aW9uIG9iamVjdHMuCj4gLQkgKgo+IC0JICogSWYgeW91IGhpdCB0
aGlzIEJVRygpIGl0IG1lYW5zIHNvbWVvbmUgZHJvcHBlZCB0aGVpciByZWYgdG8gdGhlCj4gLQkg
KiBkbWEtYnVmIHdoaWxlIHN0aWxsIGhhdmluZyBwZW5kaW5nIG9wZXJhdGlvbiB0byB0aGUgYnVm
ZmVyLgo+ICsJICogSWYgeW91IGhpdCB0aGlzIEJVRygpIGl0IGNvdWxkIG1lYW46Cj4gKwkgKiAq
IFRoZXJlJ3MgYSBmaWxlIHJlZmVyZW5jZSBpbWJhbGFuY2UgaW4gZG1hX2J1Zl9wb2xsIC8gZG1h
X2J1Zl9wb2xsX2NiIG9yIHNvbWV3aGVyZSBlbHNlCj4gKwkgKiAqIGRtYWJ1Zi0+Y2JfaW4vb3V0
LmFjdGl2ZSBhcmUgbm9uLTAgZGVzcGl0ZSBubyBwZW5kaW5nIGZlbmNlIGNhbGxiYWNrCj4gICAJ
ICovCj4gICAJQlVHX09OKGRtYWJ1Zi0+Y2JfaW4uYWN0aXZlIHx8IGRtYWJ1Zi0+Y2Jfb3V0LmFj
dGl2ZSk7Cj4gICAKPiBAQCAtMTk2LDYgKzE5Myw3IEBAIHN0YXRpYyBsb2ZmX3QgZG1hX2J1Zl9s
bHNlZWsoc3RydWN0IGZpbGUgKmZpbGUsIGxvZmZfdCBvZmZzZXQsIGludCB3aGVuY2UpCj4gICBz
dGF0aWMgdm9pZCBkbWFfYnVmX3BvbGxfY2Ioc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIHN0cnVj
dCBkbWFfZmVuY2VfY2IgKmNiKQo+ICAgewo+ICAgCXN0cnVjdCBkbWFfYnVmX3BvbGxfY2JfdCAq
ZGNiID0gKHN0cnVjdCBkbWFfYnVmX3BvbGxfY2JfdCAqKWNiOwo+ICsJc3RydWN0IGRtYV9idWYg
KmRtYWJ1ZiA9IGNvbnRhaW5lcl9vZihkY2ItPnBvbGwsIHN0cnVjdCBkbWFfYnVmLCBwb2xsKTsK
PiAgIAl1bnNpZ25lZCBsb25nIGZsYWdzOwo+ICAgCj4gICAJc3Bpbl9sb2NrX2lycXNhdmUoJmRj
Yi0+cG9sbC0+bG9jaywgZmxhZ3MpOwo+IEBAIC0yMDMsNiArMjAxLDggQEAgc3RhdGljIHZvaWQg
ZG1hX2J1Zl9wb2xsX2NiKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBzdHJ1Y3QgZG1hX2ZlbmNl
X2NiICpjYikKPiAgIAlkY2ItPmFjdGl2ZSA9IDA7Cj4gICAJc3Bpbl91bmxvY2tfaXJxcmVzdG9y
ZSgmZGNiLT5wb2xsLT5sb2NrLCBmbGFncyk7Cj4gICAJZG1hX2ZlbmNlX3B1dChmZW5jZSk7Cj4g
KwkvKiBQYWlyZWQgd2l0aCBnZXRfZmlsZSBpbiBkbWFfYnVmX3BvbGwgKi8KPiArCWZwdXQoZG1h
YnVmLT5maWxlKTsKCklzIGNhbGxpbmcgZnB1dCgpIGluIGludGVycnVwdCBjb250ZXh0IG9rPyBJ
SVJDIHRoYXQgY291bGQgcG90ZW50aWFsbHkgCnNsZWVwLgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoK
PiAgIH0KPiAgIAo+ICAgc3RhdGljIGJvb2wgZG1hX2J1Zl9wb2xsX3NoYXJlZChzdHJ1Y3QgZG1h
X3Jlc3YgKnJlc3YsCj4gQEAgLTI3OCw2ICsyNzgsOSBAQCBzdGF0aWMgX19wb2xsX3QgZG1hX2J1
Zl9wb2xsKHN0cnVjdCBmaWxlICpmaWxlLCBwb2xsX3RhYmxlICpwb2xsKQo+ICAgCQlzcGluX3Vu
bG9ja19pcnEoJmRtYWJ1Zi0+cG9sbC5sb2NrKTsKPiAgIAo+ICAgCQlpZiAoZXZlbnRzICYgRVBP
TExPVVQpIHsKPiArCQkJLyogUGFpcmVkIHdpdGggZnB1dCBpbiBkbWFfYnVmX3BvbGxfY2IgKi8K
PiArCQkJZ2V0X2ZpbGUoZG1hYnVmLT5maWxlKTsKPiArCj4gICAJCQlpZiAoIWRtYV9idWZfcG9s
bF9zaGFyZWQocmVzdiwgZGNiKSAmJgo+ICAgCQkJICAgICFkbWFfYnVmX3BvbGxfZXhjbChyZXN2
LCBkY2IpKQo+ICAgCQkJCS8qIE5vIGNhbGxiYWNrIHF1ZXVlZCwgd2FrZSB1cCBhbnkgb3RoZXIg
d2FpdGVycyAqLwo+IEBAIC0yOTksNiArMzAyLDkgQEAgc3RhdGljIF9fcG9sbF90IGRtYV9idWZf
cG9sbChzdHJ1Y3QgZmlsZSAqZmlsZSwgcG9sbF90YWJsZSAqcG9sbCkKPiAgIAkJc3Bpbl91bmxv
Y2tfaXJxKCZkbWFidWYtPnBvbGwubG9jayk7Cj4gICAKPiAgIAkJaWYgKGV2ZW50cyAmIEVQT0xM
SU4pIHsKPiArCQkJLyogUGFpcmVkIHdpdGggZnB1dCBpbiBkbWFfYnVmX3BvbGxfY2IgKi8KPiAr
CQkJZ2V0X2ZpbGUoZG1hYnVmLT5maWxlKTsKPiArCj4gICAJCQlpZiAoIWRtYV9idWZfcG9sbF9l
eGNsKHJlc3YsIGRjYikpCj4gICAJCQkJLyogTm8gY2FsbGJhY2sgcXVldWVkLCB3YWtlIHVwIGFu
eSBvdGhlciB3YWl0ZXJzICovCj4gICAJCQkJZG1hX2J1Zl9wb2xsX2NiKE5VTEwsICZkY2ItPmNi
KTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
