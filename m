Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7BC2484C9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:33:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB5C3666E6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:33:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9D0F666717; Tue, 18 Aug 2020 12:33:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 763E060EFE;
	Tue, 18 Aug 2020 12:32:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 64CAF61082
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 08:47:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 46B7161873; Tue, 21 Jul 2020 08:47:21 +0000 (UTC)
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by lists.linaro.org (Postfix) with ESMTPS id E255361082
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 08:47:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id D68C23FA36;
 Tue, 21 Jul 2020 10:47:18 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xxeMSWhjAfgq; Tue, 21 Jul 2020 10:47:17 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 7D82A3F9E7;
 Tue, 21 Jul 2020 10:47:15 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id CC59B36014B;
 Tue, 21 Jul 2020 10:47:14 +0200 (CEST)
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
 <20200721074157.GB3278063@phenom.ffwll.local>
 <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
Date: Tue, 21 Jul 2020 10:47:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
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

Ck9uIDcvMjEvMjAgOTo0NSBBTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiBBbSAyMS4wNy4y
MCB1bSAwOTo0MSBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4+IE9uIE1vbiwgSnVsIDIwLCAyMDIw
IGF0IDAxOjE1OjE3UE0gKzAyMDAsIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCkgCj4+IHdyb3Rl
Ogo+Pj4gSGksCj4+Pgo+Pj4gT24gNy85LzIwIDI6MzMgUE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6
Cj4+Pj4gQ29tZXMgdXAgZXZlcnkgZmV3IHllYXJzLCBnZXRzIHNvbWV3aGF0IHRlZGlvdXMgdG8g
ZGlzY3VzcywgbGV0J3MKPj4+PiB3cml0ZSB0aGlzIGRvd24gb25jZSBhbmQgZm9yIGFsbC4KPj4+
Pgo+Pj4+IFdoYXQgSSdtIG5vdCBzdXJlIGFib3V0IGlzIHdoZXRoZXIgdGhlIHRleHQgc2hvdWxk
IGJlIG1vcmUgZXhwbGljaXQgaW4KPj4+PiBmbGF0IG91dCBtYW5kYXRpbmcgdGhlIGFtZGtmZCBl
dmljdGlvbiBmZW5jZXMgZm9yIGxvbmcgcnVubmluZyBjb21wdXRlCj4+Pj4gd29ya2xvYWRzIG9y
IHdvcmtsb2FkcyB3aGVyZSB1c2Vyc3BhY2UgZmVuY2luZyBpcyBhbGxvd2VkLgo+Pj4gQWx0aG91
Z2ggKGluIG15IGh1bWJsZSBvcGluaW9uKSBpdCBtaWdodCBiZSBwb3NzaWJsZSB0byBjb21wbGV0
ZWx5IAo+Pj4gdW50YW5nbGUKPj4+IGtlcm5lbC1pbnRyb2R1Y2VkIGZlbmNlcyBmb3IgcmVzb3Vy
Y2UgbWFuYWdlbWVudCBhbmQgZG1hLWZlbmNlcyB1c2VkIAo+Pj4gZm9yCj4+PiBjb21wbGV0aW9u
LSBhbmQgZGVwZW5kZW5jeSB0cmFja2luZyBhbmQgbGlmdCBhIGxvdCBvZiByZXN0cmljdGlvbnMg
Cj4+PiBmb3IgdGhlCj4+PiBkbWEtZmVuY2VzLCBpbmNsdWRpbmcgcHJvaGliaXRpbmcgaW5maW5p
dGUgb25lcywgSSB0aGluayB0aGlzIG1ha2VzIAo+Pj4gc2Vuc2UKPj4+IGRlc2NyaWJpbmcgdGhl
IGN1cnJlbnQgc3RhdGUuCj4+IFllYWggSSB0aGluayBhIGZ1dHVyZSBwYXRjaCBuZWVkcyB0byB0
eXBlIHVwIGhvdyB3ZSB3YW50IHRvIG1ha2UgdGhhdAo+PiBoYXBwZW4gKGZvciBzb21lIGNyb3Nz
IGRyaXZlciBjb25zaXN0ZW5jeSkgYW5kIHdoYXQgbmVlZHMgdG8gYmUKPj4gY29uc2lkZXJlZC4g
U29tZSBvZiB0aGUgbmVjZXNzYXJ5IHBhcnRzIGFyZSBhbHJlYWR5IHRoZXJlICh3aXRoIGxpa2Ug
dGhlCj4+IHByZWVtcHRpb24gZmVuY2VzIGFtZGtmZCBoYXMgYXMgYW4gZXhhbXBsZSksIGJ1dCBJ
IHRoaW5rIHNvbWUgY2xlYXIgZG9jcwo+PiBvbiB3aGF0J3MgcmVxdWlyZWQgZnJvbSBib3RoIGh3
LCBkcml2ZXJzIGFuZCB1c2Vyc3BhY2Ugd291bGQgYmUgcmVhbGx5Cj4+IGdvb2QuCj4KPiBJJ20g
Y3VycmVudGx5IHdyaXRpbmcgdGhhdCB1cCwgYnV0IHByb2JhYmx5IHN0aWxsIG5lZWQgYSBmZXcg
ZGF5cyBmb3IgCj4gdGhpcy4KCkdyZWF0ISBJIHB1dCBkb3duIHNvbWUgKHZlcnkpIGluaXRpYWwg
dGhvdWdodHMgYSBjb3VwbGUgb2Ygd2Vla3MgYWdvIApidWlsZGluZyBvbiBldmljdGlvbiBmZW5j
ZXMgZm9yIHZhcmlvdXMgaGFyZHdhcmUgY29tcGxleGl0eSBsZXZlbHMgaGVyZToKCmh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy90aG9tYXNoL2RvY3MvLS9ibG9iL21hc3Rlci9VbnRhbmds
aW5nJTIwZG1hLWZlbmNlJTIwYW5kJTIwbWVtb3J5JTIwYWxsb2NhdGlvbi5vZHQKCi9UaG9tYXMK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
