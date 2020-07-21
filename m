Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EE8227B3E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jul 2020 10:56:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C18C615DE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jul 2020 08:56:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 08CB5665BF; Tue, 21 Jul 2020 08:56:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_HI,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7E5161873;
	Tue, 21 Jul 2020 08:55:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 978E0610EE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 08:55:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8095061873; Tue, 21 Jul 2020 08:55:25 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2071.outbound.protection.outlook.com [40.107.92.71])
 by lists.linaro.org (Postfix) with ESMTPS id B7C5D610EE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 08:55:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RyWoBuQ5/q8f7GSM5pxp7oX4iypUMU8JrRihVvht5qUo14kbroUGsZeSw+2pAotaqcvYinXgl6uceXG8lwdh4ageLVAvteUcTdtBCvUjt2lSu1SUqGJ0NGQCYfA2R71n1BhwRcuVrdsDz0BDMqAGHwIayxNV45l/r2b6/ZFVHLrELLGxUHx+TnctK4GuX/ZaHqrj+E4IOgazYBfFYCq9mvZAmfa85jvLWVXkWMpSsNC6oc9iDGyGVvx30p82tTCYKAM3gcRmKJtyYRM8nWamiQL0rbk3uuLiYo8Pp56vGm0Q2HASMawAaBi0WWz8bRPp3LjbR9GpUKW7VEZn//EBtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QeaGCrrDHmqsSeyTGV4X/OwWpWxAHHNG/nNNVIxtZPA=;
 b=jDIqUXgIx1uMb/e5Gf7K1BeulL5n/Y5nTrMa5ONdS8Wr1fsL96Gj//Wl3FsqFn1CqgrymRtwvsvhQhpovmNHWdlA2JGVj/uUkiOov2pHSrjYR13tkSpjnHNxflGqC5/miSkQ1s9qs3n35UVB69vP5U1FtIZFKTdTes+9RiRRgb133o9VfUayWo9wjcw5cLYrcZN4wkDxAQs3n9rQb1uP/T3UaBNsYDDyk8G+rx29w2M781bbd5MTJfGT+pOYmWQHwPhf1tikRGt0yYtYR0QeNK5n/niw1o37eGhZpDF9JW9YEj9+rkmrZxTTjQTTob5k3nE+7VlKzXPeHjWuVdodoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3967.namprd12.prod.outlook.com (2603:10b6:208:16c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.17; Tue, 21 Jul
 2020 08:55:22 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::a16e:8812:b4c0:918d]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::a16e:8812:b4c0:918d%6]) with mapi id 15.20.3195.026; Tue, 21 Jul 2020
 08:55:21 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 Daniel Vetter <daniel@ffwll.ch>
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
 <20200721074157.GB3278063@phenom.ffwll.local>
 <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
 <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <2ca2c004-1e11-87f5-4bd8-761e1b44d21f@amd.com>
Date: Tue, 21 Jul 2020 10:55:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
Content-Language: en-US
X-ClientProxiedBy: AM0PR04CA0127.eurprd04.prod.outlook.com
 (2603:10a6:208:55::32) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM0PR04CA0127.eurprd04.prod.outlook.com (2603:10a6:208:55::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3195.18 via Frontend Transport; Tue, 21 Jul 2020 08:55:19 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c78dc7db-fd98-4487-e0ec-08d82d53ccc8
X-MS-TrafficTypeDiagnostic: MN2PR12MB3967:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB3967567C61BC043F2058343F83780@MN2PR12MB3967.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K8rlvC2wFfrdV23lhT4j0xR0dD9gmUFu7MPEQCWmSOztkQ+OyTxg7R+hbwVYVG9sX9ct+YtOwGgtydW0wE024a1LCCOb35M8TL3QGhA0WtVSoZpLBIhyfviSO+lS4hUwhgNoNCMWXcA8uqlh+7lSbywiYv280mqj5uFUEZtNF+4cajSJRv5si6bhfMVOoAIP0AbZQ4jh+W2B5fRKr5Z5WOfrAXLrWhW0kd0F2rzWodFipMgGshGv3pbbXRl1RLOpZsBRMeOdwk+pse14Qwd90YFxuiAnea6CO38HCCTJjq7koryTqYy8lm7/XFzT9hkw/kIG9JSKBBmO488LJPLJADVXwXcQzxACPYMcwtuOm91LLndwCsllXPSiUfBGIpvaErlnCygVBFDoRFxP1gOPZuUYfH9HK+81xF7IMkVCPFc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(136003)(396003)(39860400002)(366004)(45080400002)(8676002)(316002)(66574015)(53546011)(86362001)(6486002)(36756003)(8936002)(4326008)(52116002)(478600001)(110136005)(66556008)(66476007)(16526019)(31696002)(2616005)(66946007)(186003)(54906003)(6666004)(2906002)(5660300002)(966005)(31686004)(7416002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: j5mbNK/Jgj9MbhAJ5gwTfJ+CkMspFk073mKcJj4d4yHlqML3H+MZQDLBxiUZKol8Kyk8RpzPLAworAeONdvWfGLuRE1y+ySef7GkbfMo9RjHxx4jufjqPzWyLkJLvXTJlgxhTWNHJxLjBRK8jldOq1TSLM8EIVeDASsWA3AmtsJE5ld5vcZUYQk69bg/Z9118M5pjRfrkGH7hQjRLDkUXQqshD/HLW9b16c/17E4B2m2VrPqhSiX0qT/FrM51TgnhgW2Nv4RP6lVp7Yr4+phiDYQ9Q/nxxGux2tpAGN8XIJQif4L4WcOvnSXLh8YnIp6O9BduFMlqnelVgdiF+qFl8ChKcrenKu7vhuOvkiED1hcimwscTPvRwjNZa7FHb2Prx4t1BBAMfx7y5ZCZqXQn0NOfGRhJG3Cj6pj3hAGJSjVTioQjODcdm/5TJFtC5InsKsGdSdSQU4DmdZuAZaO8J72Mw8gtYL5QAwEemNB3dXiCaWKkFf8rkCAFxGAmV47u5/CiypVMfTXaGwibIqP0SuyYTOc+jOVzqkRpoDdch7lpEIKOujG/WwE/uHugyW7
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c78dc7db-fd98-4487-e0ec-08d82d53ccc8
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2020 08:55:21.7195 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jFZhoKNd61bmkQxYXFVOo0u1t22+F09PgeCmpytZeEgYR9Bqyy9LlVgORb47dDiY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3967
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Stone <daniels@collabora.com>, linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx@lists.freedesktop.org, Jason Ekstrand <jason@jlekstrand.net>,
 Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf.rst: Document why
 indefinite fences are a bad idea
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

QW0gMjEuMDcuMjAgdW0gMTA6NDcgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpOgo+
Cj4gT24gNy8yMS8yMCA5OjQ1IEFNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+PiBBbSAyMS4w
Ny4yMCB1bSAwOTo0MSBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4+PiBPbiBNb24sIEp1bCAyMCwg
MjAyMCBhdCAwMToxNToxN1BNICswMjAwLCBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpIAo+Pj4g
d3JvdGU6Cj4+Pj4gSGksCj4+Pj4KPj4+PiBPbiA3LzkvMjAgMjozMyBQTSwgRGFuaWVsIFZldHRl
ciB3cm90ZToKPj4+Pj4gQ29tZXMgdXAgZXZlcnkgZmV3IHllYXJzLCBnZXRzIHNvbWV3aGF0IHRl
ZGlvdXMgdG8gZGlzY3VzcywgbGV0J3MKPj4+Pj4gd3JpdGUgdGhpcyBkb3duIG9uY2UgYW5kIGZv
ciBhbGwuCj4+Pj4+Cj4+Pj4+IFdoYXQgSSdtIG5vdCBzdXJlIGFib3V0IGlzIHdoZXRoZXIgdGhl
IHRleHQgc2hvdWxkIGJlIG1vcmUgCj4+Pj4+IGV4cGxpY2l0IGluCj4+Pj4+IGZsYXQgb3V0IG1h
bmRhdGluZyB0aGUgYW1ka2ZkIGV2aWN0aW9uIGZlbmNlcyBmb3IgbG9uZyBydW5uaW5nIAo+Pj4+
PiBjb21wdXRlCj4+Pj4+IHdvcmtsb2FkcyBvciB3b3JrbG9hZHMgd2hlcmUgdXNlcnNwYWNlIGZl
bmNpbmcgaXMgYWxsb3dlZC4KPj4+PiBBbHRob3VnaCAoaW4gbXkgaHVtYmxlIG9waW5pb24pIGl0
IG1pZ2h0IGJlIHBvc3NpYmxlIHRvIGNvbXBsZXRlbHkgCj4+Pj4gdW50YW5nbGUKPj4+PiBrZXJu
ZWwtaW50cm9kdWNlZCBmZW5jZXMgZm9yIHJlc291cmNlIG1hbmFnZW1lbnQgYW5kIGRtYS1mZW5j
ZXMgCj4+Pj4gdXNlZCBmb3IKPj4+PiBjb21wbGV0aW9uLSBhbmQgZGVwZW5kZW5jeSB0cmFja2lu
ZyBhbmQgbGlmdCBhIGxvdCBvZiByZXN0cmljdGlvbnMgCj4+Pj4gZm9yIHRoZQo+Pj4+IGRtYS1m
ZW5jZXMsIGluY2x1ZGluZyBwcm9oaWJpdGluZyBpbmZpbml0ZSBvbmVzLCBJIHRoaW5rIHRoaXMg
bWFrZXMgCj4+Pj4gc2Vuc2UKPj4+PiBkZXNjcmliaW5nIHRoZSBjdXJyZW50IHN0YXRlLgo+Pj4g
WWVhaCBJIHRoaW5rIGEgZnV0dXJlIHBhdGNoIG5lZWRzIHRvIHR5cGUgdXAgaG93IHdlIHdhbnQg
dG8gbWFrZSB0aGF0Cj4+PiBoYXBwZW4gKGZvciBzb21lIGNyb3NzIGRyaXZlciBjb25zaXN0ZW5j
eSkgYW5kIHdoYXQgbmVlZHMgdG8gYmUKPj4+IGNvbnNpZGVyZWQuIFNvbWUgb2YgdGhlIG5lY2Vz
c2FyeSBwYXJ0cyBhcmUgYWxyZWFkeSB0aGVyZSAod2l0aCBsaWtlIAo+Pj4gdGhlCj4+PiBwcmVl
bXB0aW9uIGZlbmNlcyBhbWRrZmQgaGFzIGFzIGFuIGV4YW1wbGUpLCBidXQgSSB0aGluayBzb21l
IGNsZWFyIAo+Pj4gZG9jcwo+Pj4gb24gd2hhdCdzIHJlcXVpcmVkIGZyb20gYm90aCBodywgZHJp
dmVycyBhbmQgdXNlcnNwYWNlIHdvdWxkIGJlIHJlYWxseQo+Pj4gZ29vZC4KPj4KPj4gSSdtIGN1
cnJlbnRseSB3cml0aW5nIHRoYXQgdXAsIGJ1dCBwcm9iYWJseSBzdGlsbCBuZWVkIGEgZmV3IGRh
eXMgZm9yIAo+PiB0aGlzLgo+Cj4gR3JlYXQhIEkgcHV0IGRvd24gc29tZSAodmVyeSkgaW5pdGlh
bCB0aG91Z2h0cyBhIGNvdXBsZSBvZiB3ZWVrcyBhZ28gCj4gYnVpbGRpbmcgb24gZXZpY3Rpb24g
ZmVuY2VzIGZvciB2YXJpb3VzIGhhcmR3YXJlIGNvbXBsZXhpdHkgbGV2ZWxzIGhlcmU6Cj4KPiBo
dHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMl
M0ElMkYlMkZnaXRsYWIuZnJlZWRlc2t0b3Aub3JnJTJGdGhvbWFzaCUyRmRvY3MlMkYtJTJGYmxv
YiUyRm1hc3RlciUyRlVudGFuZ2xpbmclMjUyMGRtYS1mZW5jZSUyNTIwYW5kJTI1MjBtZW1vcnkl
MjUyMGFsbG9jYXRpb24ub2R0JmFtcDtkYXRhPTAyJTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQw
YW1kLmNvbSU3Qzg5NzhiYmQ3ODIzZTRiNDE2NjM3MDhkODJkNTJhZGQzJTdDM2RkODk2MWZlNDg4
NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzMwOTE4MDQyNDMxMjM5MCZhbXA7c2Rh
dGE9dFR4eDJ2Znpmd0xNMUlCSlNxcUFaUncxNjA0UiUyRjBiSTNNd04xJTJGQmYyVlElM0QmYW1w
O3Jlc2VydmVkPTAgCj4KCkkgZG9uJ3QgdGhpbmsgdGhhdCB0aGlzIHdpbGwgZXZlciBiZSBwb3Nz
aWJsZS4KClNlZSB0aGF0IERhbmllbCBkZXNjcmliZXMgaW4gaGlzIHRleHQgaXMgdGhhdCBpbmRl
ZmluaXRlIGZlbmNlcyBhcmUgYSAKYmFkIGlkZWEgZm9yIG1lbW9yeSBtYW5hZ2VtZW50LCBhbmQg
SSB0aGluayB0aGF0IHRoaXMgaXMgYSBmaXhlZCBmYWN0LgoKSW4gb3RoZXIgd29yZHMgdGhlIHdo
b2xlIGNvbmNlcHQgb2Ygc3VibWl0dGluZyB3b3JrIHRvIHRoZSBrZXJuZWwgd2hpY2ggCmRlcGVu
ZHMgb24gc29tZSB1c2VyIHNwYWNlIGludGVyYWN0aW9uIGRvZXNuJ3Qgd29yayBhbmQgbmV2ZXIg
d2lsbC4KCldoYXQgY2FuIGJlIGRvbmUgaXMgdGhhdCBkbWFfZmVuY2VzIHdvcmsgd2l0aCBoYXJk
d2FyZSBzY2hlZHVsZXJzLiBFLmcuIAp3aGF0IHRoZSBLRkQgdHJpZXMgdG8gZG8gd2l0aCBpdHMg
cHJlZW1wdGlvbiBmZW5jZXMuCgpCdXQgZm9yIHRoaXMgeW91IG5lZWQgYSBiZXR0ZXIgY29uY2Vw
dCBhbmQgZGVzY3JpcHRpb24gb2Ygd2hhdCB0aGUgCmhhcmR3YXJlIHNjaGVkdWxlciBpcyBzdXBw
b3NlZCB0byBkbyBhbmQgaG93IHRoYXQgaW50ZXJhY3RzIHdpdGggCmRtYV9mZW5jZSBvYmplY3Rz
LgoKQ2hyaXN0aWFuLgoKPgo+IC9UaG9tYXMKPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
