Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 084692AA4F4
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Nov 2020 13:20:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA48D607A4
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Nov 2020 12:20:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BD6DF60850; Sat,  7 Nov 2020 12:20:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAF916088F;
	Sat,  7 Nov 2020 12:19:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 523B0607A4
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Nov 2020 12:19:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 415496088F; Sat,  7 Nov 2020 12:19:05 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam08on2050.outbound.protection.outlook.com [40.107.100.50])
 by lists.linaro.org (Postfix) with ESMTPS id AA9BB607A4
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Nov 2020 12:19:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=npZWfFJggzoNG2/mgEEROeHrZzbBf5No43SuwSJ2exunPvWFuC8Unnu27brJ8TYLApy6UVyE5SaladH52qGdj5D7KUFTELT39+OmcAAtopuHZldfAov07UzceA0hHqVuckCovB9ktEpxPA5VKh9tFu/mDbp4kdlXppWE2zDzljPv2AMQMorxDEValJIfHvONq8/djJ8oOKBmONtJSIXreHCOe17wvCuykH2QM/TGc85WoRqmxWnIR6lYMAcDw4Wx/En1HUSeVy7Je+rSs17qdSgiasyZiKXMH+/weKEj9DOw56wxZlnLSDWhZvxjiR/QQEtPtScIakX/NbNQRdzH/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hMOqGh7e1a3RLvnni3JcnMpd1EMAD9XhJMOiKtUcJ68=;
 b=iq0pNVf6f+flda5/akimRUht00+RoCrZaUkwHB06cLAwwqlXZaaoeuekgcp2aIrNsugbMKmpRvcjzuJddnnTVDoZntHCq8Ze3s+Q3LZ/9IHkYnjrKL0tByidWvQAEjbeItxOO0b94lT+XX+dijJF/a7WKiZbBIm0sXjVb+10+g03tonIkPJGVJQd89QIhTkAkSdoZsnIlPF4iflUogSnovNGEQQ+BdP4QplRE5MM7BJy3jgKoWBHxFYfLYnuLoAoinu9TkgxUpMbopC8FodgqtUlW2yRb4fPj75iebfsMTNW03Ig+r99L5ZNiiMRFzeOj7cy09cve4vzaZkCX0ehsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4565.namprd12.prod.outlook.com (2603:10b6:208:26b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.22; Sat, 7 Nov
 2020 12:19:01 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::1ccc:8a9a:45d3:dd31]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::1ccc:8a9a:45d3:dd31%7]) with mapi id 15.20.3499.032; Sat, 7 Nov 2020
 12:19:01 +0000
To: Lee Jones <lee.jones@linaro.org>
References: <20201106214949.2042120-1-lee.jones@linaro.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <9d4be6a4-4f39-b908-4086-2b6adb695465@amd.com>
Date: Sat, 7 Nov 2020 13:18:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201106214949.2042120-1-lee.jones@linaro.org>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-ClientProxiedBy: AM0PR01CA0178.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:aa::47) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM0PR01CA0178.eurprd01.prod.exchangelabs.com (2603:10a6:208:aa::47) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.21 via Frontend
 Transport; Sat, 7 Nov 2020 12:18:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 74dc98c9-a0f1-4475-3572-08d883174f53
X-MS-TrafficTypeDiagnostic: MN2PR12MB4565:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB4565ABF321A6C1996F1300CB83EC0@MN2PR12MB4565.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y8Pa0TO4IuM0mnFnr3iWszzdEl4Injo8reSTnHK/qvKNAMssFxKnED2Ph66huA0igbhiFniUeQsBiBgyPnmjDZSCgIFcpM9gN49iMAEroUpqEKUfghJry9ImhTR4oOHl8m53Qxg2rZoQn6UMolk40ybiN15OYGVAQoIDlhxFd4j6BnkxMQLwyh8ZbHuW3jc4xZzQnaIvqdq7zf5Wzwbl/+hqIvjvnuD9OFcOP0zDi0GaK6ERgv3N0tOoErbR5APlzrz2sSygDIdF2NiwxQE+FlKI4gvlSLdfhZdct3mtZkj/STVqSLYD91a5GcCRKDbuxAEvSfgPW5xsL77Cdn0wGxLLxJ3SqY1Kasn6YZkD02EgeL1ApmYOKjmaKzrJ5DYe
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(39860400002)(346002)(136003)(366004)(36756003)(31696002)(8936002)(316002)(86362001)(6666004)(52116002)(2906002)(7416002)(6486002)(4326008)(478600001)(186003)(8676002)(16526019)(6916009)(2616005)(66556008)(66476007)(54906003)(66946007)(31686004)(83380400001)(5660300002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: f5TydOyqfkJbpMYv5zP8irehHA7/l8UkGNZK3Ffz/ZuK1eD077K4xcMXw3InAnYh1N4uWQTf/wWdRY8YXHBOKcDUXpPrHvzamev8KvZavHV80Zit6cygCcfFMYsQMeOCcXPs/5iB6FgLt+HWFEHqA9Fe+KgqoMQu5gtTC20YhKAcmrYbMwYI1pNJ+bSLDHdnQCwQY9nh1NX5gDslDqZ6wcZWWcrGItOqnFbD1nBNELf6qBSvOeC0LgSEFhfxi2YxYnOIQpJHTw+/7oqn0ODoH1Rl7cc7tfstUR9SulDFxFGrZx6srBipM+C33P7Lzaz1YTEff6NTCDwn59RkADJEhXwPiD2uN5zy3Fc05W/EDJKTr9RPG5Sl2eVmmmKpqdghO+JdX5AGhcq/UEUPtqNSQkG8YuZ+rs+wJO85sixsTcLV3N4FvMrD+2o1c4VUHhpHhjnBcnMrLsy7eHjS3lGUOrRT6b2JuOI6Z1tWJwZQU0ETmThHIwLMrzXTjOcSxvsNB+ktQxo1Z+5YLrAHtU+bwkSHOD5XKqfKjhY7uCrhpsysdyupeueAWOo/fFytMP1uiN1CHhCnJMzaVtMigjN1UhD52SzM8wllScx76CyskLkevBkXM9u1sRVu9KrJ0bsuMUUXUvgLsIku3f2FjBlcejipLTIslCAKCsjuxCGALHBorGDAKVqVdzfEP3ebOnXua/K/Yu/e9deVqsZZ0MjYPw==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74dc98c9-a0f1-4475-3572-08d883174f53
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2020 12:19:01.6811 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yAyixC4PhZDb0f+pP6jOY6gYI1dzpIJCRZkKrHj8hHyHyV7Uoj3e9StcN4Q+ldzE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4565
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Eric Anholt <eric@anholt.net>, Huang Rui <ray.huang@amd.com>,
 Rob Clark <rob@ti.com>, Gareth Hughes <gareth@valinux.com>,
 amd-gfx@lists.freedesktop.org, Rob Clark <rob.clark@linaro.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Keith Whitwell <keith@tungstengraphics.com>, Andy Gross <andy.gross@ti.com>,
 Harry Wentland <harry.wentland@amd.com>, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Leo Li <sunpeng.li@amd.com>,
 linaro-mm-sig@lists.linaro.org, by <jhartmann@precisioninsight.com>,
 Jeff Hartmann <jhartmann@valinux.com>, linux-kernel@vger.kernel.org,
 Faith <faith@valinux.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>
Subject: Re: [Linaro-mm-sig] [PATCH 00/19] [Set 2] Rid W=1 warnings from GPU
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

V2VsbCB0aGF0J3MgcXVpdGUgYSBwYXRjaCBzZXQuCgpGaXJzdCBvZiBhbGwgY2FuIHlvdSBzZXBh
cmF0ZSB0aGlzIGEgYml0IG1vcmUgYnkgZHJpdmVyPyBJJ20gYXNzdW1pbmcgd2UgCm1haW50YWlu
ZXJzIGFyZSBzdXBwb3NlZCB0byBwaWNrIHRoYXQgdXAgYW5kIGFwcGx5IGl0LgoKcmFkZW9uIGFu
ZCBhbWRncHUgY2FuIHN0aWNrIHRvZ2V0aGVyIHNpbmNlIHRoYXQgaXMgbW9zdGx5IEFsZXggYW5k
IG1lLCAKYnV0IEknbSBub3Qgc3VyZSBpZiB3ZSB3YW50IHRvIGRvIHNvbWUgb2YgdGhlIHN1Z2dl
c3RlZCBjaGFuZ2VzIHRvIHJhZGVvbi4KCkdvaW5nIHRvIHBpY2sgdXAgdGhlIHNpbmdsZSBUVE0g
Y2hhbmdlIGZvciB1cHN0cmVhbWluZy4KClRoYW5rcywKQ2hyaXN0aWFuLgoKQW0gMDYuMTEuMjAg
dW0gMjI6NDkgc2NocmllYiBMZWUgSm9uZXM6Cj4gVGhpcyBzZXQgaXMgcGFydCBvZiBhIGxhcmdl
ciBlZmZvcnQgYXR0ZW1wdGluZyB0byBjbGVhbi11cCBXPTEKPiBrZXJuZWwgYnVpbGRzLCB3aGlj
aCBhcmUgY3VycmVudGx5IG92ZXJ3aGVsbWluZ2x5IHJpZGRsZWQgd2l0aAo+IG5pZ2dseSBsaXR0
bGUgd2FybmluZ3MuCj4KPiBUaGVyZSBhcmUgNTAwMCB3YXJuaW5ncyB0byB3b3JrIHRocm91Z2gu
ICBJdCB3aWxsIHRha2UgYSBjb3VwbGUgbW9yZQo+IHNldHMuICBBbHRob3VnaCwgKCJkcm0vYW1k
L2Rpc3BsYXkvZGMvYmFzaWNzL2ZpeHB0MzFfMzI6IE1vdmUKPiB2YXJpYWJsZXMgdG8gd2hlcmUg
dGhleSdyZSB1c2VkIikgZG9lcyB0YWtlIGNhcmUgb2YgMjAwMCBvZiB0aGVtIQo+Cj4gTGVlIEpv
bmVzICgxOSk6Cj4gICAgZHJtL3R0bS90dG1fcmFuZ2VfbWFuYWdlcjogRGVtb3RlIG5vbi1jb25m
b3JtYW50IGtlcm5lbC1kb2MgaGVhZGVyCj4gICAgZHJtL3IxMjgvYXRpX3BjaWdhcnQ6IFNvdXJj
ZSBmaWxlIGhlYWRlcnMgYXJlIG5vdCBnb29kIGNhbmRpZGF0ZXMgZm9yCj4gICAgICBrZXJuZWwt
ZG9jCj4gICAgZHJtL3NlbGZ0ZXN0cy90ZXN0LWRybV9kcF9tc3RfaGVscGVyOiBNb3ZlCj4gICAg
ICAnc2lkZWJhbmRfbXNnX3JlcV9lbmNvZGVfZGVjb2RlJyBvbnRvIHRoZSBoZWFwCj4gICAgZHJt
L21nYS9tZ2FfZG1hOiBEZW1vdGUga2VybmVsLWRvYyBhYnVzZXJzIHRvIHN0YW5kYXJkIGNvbW1l
bnQgYmxvY2tzCj4gICAgZHJtL21nYS9tZ2Ffc3RhdGU6IFJlbW92ZSB1bnVzZWQgdmFyaWFibGUg
J2J1Zl9wcml2Jwo+ICAgIGRybS9yYWRlb24vYXRvbTogTW92ZSBwcm90b3R5cGUgaW50byBzaGFy
ZWQgbG9jYXRpb24KPiAgICBkcm0vcmFkZW9uL3JhZGVvbl9rbXM6IEluY2x1ZGUgaGVhZGVyIGNv
bnRhaW5pbmcgb3VyIG93biBwcm90b3R5cGVzCj4gICAgZHJtL29tYXBkcm0vb21hcF9nZW06IEZp
eCBtaXNuYW1lZCBhbmQgbWlzc2luZyBwYXJhbWV0ZXIgZGVzY3JpcHRpb25zCj4gICAgZHJtL29t
YXBkcm0vb21hcF9kbW1fdGlsZXI6IERlbW90ZSBhYnVzaXZlIHVzZSBvZiBrZXJuZWwtZG9jIGZv
cm1hdAo+ICAgIGRybS9yYWRlb24vcmFkZW9uOiBNb3ZlIHByb3RvdHlwZSBpbnRvIHNoYXJlZCBo
ZWFkZXIKPiAgICBkcm0vcmFkZW9uL3JhZGVvbl9kcnY6IFNvdXJjZSBmaWxlIGhlYWRlcnMgYXJl
IG5vdCBnb29kIGNhbmRpZGF0ZXMgZm9yCj4gICAgICBrZXJuZWwtZG9jCj4gICAgZHJtL2FtZC9k
aXNwbGF5L2RjL2Jhc2ljcy9maXhwdDMxXzMyOiBNb3ZlIHZhcmlhYmxlcyB0byB3aGVyZSB0aGV5
J3JlCj4gICAgICB1c2VkCj4gICAgZHJtL3JhZGVvbi9yYWRlb25fZHJ2OiBNb3ZlIHByb3RvdHlw
ZXMgdG8gYSBzaGFyZWQgaGVhZGVyZmlsZQo+ICAgIGRybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZp
Y2U6IFByb3ZpZGUgZG9jdW1lbnRhdGlvbiBmb3IgJ3JlZ19hZGRyJwo+ICAgICAgcGFyYW1zCj4g
ICAgZHJtL3JhZGVvbjogTW92ZSBwcm90b3R5cGVzIHRvIHNoYXJlZCBoZWFkZXIKPiAgICBkcm0v
YW1kL2FtZGdwdS9hbWRncHVfa21zOiBSZW1vdmUgJ3N0cnVjdCBkcm1fYW1kZ3B1X2luZm9fZGV2
aWNlCj4gICAgICBkZXZfaW5mbycgZnJvbSB0aGUgc3RhY2sKPiAgICBkcm0vcmFkZW9uL3JhZGVv
bl9rbXM6IEZpeCBtaXNuYW1pbmcgb2YgJ3JhZGVvbl9pbmZvX2lvY3RsJ3MgZGV2IHBhcmFtCj4g
ICAgZHJtL3JhZGVvbi9hdG9tYmlvc19jcnRjOiBSZW1vdmUgZGVzY3JpcHRpb24gb2Ygbm9uLWV4
aXN0ZW50IGZ1bmN0aW9uCj4gICAgICBwYXJhbSAnZW5jb2RlcicKPiAgICBkcm0vdjNkL3YzZF9k
cnY6IFJlbW92ZSB1bnVzZWQgc3RhdGljIHZhcmlhYmxlICd2M2RfdjNkX3BtX29wcycKPgo+ICAg
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jICAgIHwgICAyICsKPiAg
IGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9rbXMuYyAgICAgICB8IDEwNCArKysr
KysrKystLS0tLS0tLS0KPiAgIC4uLi9kcm0vYW1kL2Rpc3BsYXkvZGMvYmFzaWNzL2ZpeHB0MzFf
MzIuYyAgICB8ICAgNSArCj4gICAuLi4vZ3B1L2RybS9hbWQvZGlzcGxheS9pbmNsdWRlL2ZpeGVk
MzFfMzIuaCAgfCAgIDYgLQo+ICAgZHJpdmVycy9ncHUvZHJtL21nYS9tZ2FfZG1hLmMgICAgICAg
ICAgICAgICAgIHwgIDEwICstCj4gICBkcml2ZXJzL2dwdS9kcm0vbWdhL21nYV9zdGF0ZS5jICAg
ICAgICAgICAgICAgfCAgIDIgLQo+ICAgZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9kbW1f
dGlsZXIuYyAgICAgIHwgICA2ICstCj4gICBkcml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dl
bS5jICAgICAgICAgICAgfCAgIDMgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9yMTI4L2F0aV9wY2ln
YXJ0LmMgICAgICAgICAgICB8ICAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9hdG9t
LmggICAgICAgICAgICAgICAgIHwgICA2ICsKPiAgIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vYXRv
bWJpb3NfY3J0Yy5jICAgICAgICB8ICAgMSAtCj4gICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL2F0
b21iaW9zX2VuY29kZXJzLmMgICAgfCAgIDQgLQo+ICAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
YWRlb24uaCAgICAgICAgICAgICAgIHwgICA2ICsKPiAgIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24v
cmFkZW9uX2RldmljZS5jICAgICAgICB8ICAgMSArCj4gICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9u
L3JhZGVvbl9kZXZpY2UuaCAgICAgICAgfCAgMzIgKysrKysrCj4gICBkcml2ZXJzL2dwdS9kcm0v
cmFkZW9uL3JhZGVvbl9kaXNwbGF5LmMgICAgICAgfCAgIDQgLQo+ICAgZHJpdmVycy9ncHUvZHJt
L3JhZGVvbi9yYWRlb25fZHJ2LmMgICAgICAgICAgIHwgIDExICstCj4gICBkcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL3JhZGVvbl9kcnYuaCAgICAgICAgICAgfCAgIDcgKysKPiAgIGRyaXZlcnMvZ3B1
L2RybS9yYWRlb24vcmFkZW9uX2ttcy5jICAgICAgICAgICB8ICAgMyArLQo+ICAgLi4uL2RybS9z
ZWxmdGVzdHMvdGVzdC1kcm1fZHBfbXN0X2hlbHBlci5jICAgIHwgIDExICstCj4gICBkcml2ZXJz
L2dwdS9kcm0vdHRtL3R0bV9yYW5nZV9tYW5hZ2VyLmMgICAgICAgfCAgIDIgKy0KPiAgIGRyaXZl
cnMvZ3B1L2RybS92M2QvdjNkX2Rydi5jICAgICAgICAgICAgICAgICB8ICAzNiAtLS0tLS0KPiAg
IDIyIGZpbGVzIGNoYW5nZWQsIDEzOCBpbnNlcnRpb25zKCspLCAxMjYgZGVsZXRpb25zKC0pCj4g
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZGV2aWNl
LmgKPgo+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6
IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IEFuZHkgR3Jvc3MgPGFuZHkuZ3Jv
c3NAdGkuY29tPgo+IENjOiBieSA8amhhcnRtYW5uQHByZWNpc2lvbmluc2lnaHQuY29tPgo+IENj
OiBDaHJpc3RpYW4gS29lbmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6ICJDaHJp
c3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5p
ZT4KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBFcmljIEFuaG9s
dCA8ZXJpY0BhbmhvbHQubmV0Pgo+IENjOiBGYWl0aCA8ZmFpdGhAdmFsaW51eC5jb20+Cj4gQ2M6
IEdhcmV0aCBIdWdoZXMgPGdhcmV0aEB2YWxpbnV4LmNvbT4KPiBDYzogSGFycnkgV2VudGxhbmQg
PGhhcnJ5LndlbnRsYW5kQGFtZC5jb20+Cj4gQ2M6IEh1YW5nIFJ1aSA8cmF5Lmh1YW5nQGFtZC5j
b20+Cj4gQ2M6IEplZmYgSGFydG1hbm4gPGpoYXJ0bWFubkB2YWxpbnV4LmNvbT4KPiBDYzogS2Vp
dGggV2hpdHdlbGwgPGtlaXRoQHR1bmdzdGVuZ3JhcGhpY3MuY29tPgo+IENjOiBMZW8gTGkgPHN1
bnBlbmcubGlAYW1kLmNvbT4KPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4g
Q2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBQaGlsaXBwIFphYmVsIDxwLnph
YmVsQHBlbmd1dHJvbml4LmRlPgo+IENjOiBSb2IgQ2xhcmsgPHJvYi5jbGFya0BsaW5hcm8ub3Jn
Pgo+IENjOiBSb2IgQ2xhcmsgPHJvYkB0aS5jb20+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQu
c2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IFRvbWkgVmFsa2VpbmVuIDx0b21pLnZhbGtlaW5lbkB0
aS5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
