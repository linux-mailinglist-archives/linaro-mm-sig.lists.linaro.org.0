Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 067372CC18D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 17:02:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2126465F8C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 16:02:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 12555665F2; Wed,  2 Dec 2020 16:02:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E795365F8C;
	Wed,  2 Dec 2020 16:01:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ADA0066597
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 16:01:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A1E2B6659B; Wed,  2 Dec 2020 16:01:49 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by lists.linaro.org (Postfix) with ESMTPS id 7BFA4665F2
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 16:00:52 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-kOJKmdxQPV6-toI8ButT6w-1; Wed, 02 Dec 2020 11:00:47 -0500
X-MC-Unique: kOJKmdxQPV6-toI8ButT6w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C33378144F7;
 Wed,  2 Dec 2020 16:00:42 +0000 (UTC)
Received: from [10.36.114.61] (ovpn-114-61.ams2.redhat.com [10.36.114.61])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 35EEB60C6B;
 Wed,  2 Dec 2020 16:00:37 +0000 (UTC)
To: Michal Hocko <mhocko@suse.com>
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-3-minchan@kernel.org>
 <8f006a4a-c21d-9db3-5493-fb1cc651b0cf@redhat.com>
 <20201202154915.GU17338@dhcp22.suse.cz>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <4c2f67a2-e5b4-ed7e-3d1b-45626e2f254b@redhat.com>
Date: Wed, 2 Dec 2020 17:00:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201202154915.GU17338@dhcp22.suse.cz>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robh@kernel.org, devicetree@vger.kernel.org, Brian.Starkey@arm.com,
 Minchan Kim <minchan@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 willy@infradead.org, linux-mm <linux-mm@kvack.org>, hyesoo.yu@samsung.com,
 linaro-mm-sig@lists.linaro.org, john.stultz@linaro.org,
 christian.koenig@amd.com, joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, iamjoonsoo.kim@lge.com, vbabka@suse.cz,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v2 2/4] mm: introduce cma_alloc_bulk API
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMDIuMTIuMjAgMTY6NDksIE1pY2hhbCBIb2NrbyB3cm90ZToKPiBPbiBXZWQgMDItMTItMjAg
MTA6MTQ6NDEsIERhdmlkIEhpbGRlbmJyYW5kIHdyb3RlOgo+PiBPbiAwMS4xMi4yMCAxODo1MSwg
TWluY2hhbiBLaW0gd3JvdGU6Cj4+PiBUaGVyZSBpcyBhIG5lZWQgZm9yIHNwZWNpYWwgSFcgdG8g
cmVxdWlyZSBidWxrIGFsbG9jYXRpb24gb2YKPj4+IGhpZ2gtb3JkZXIgcGFnZXMuIEZvciBleGFt
cGxlLCA0ODAwICogb3JkZXItNCBwYWdlcywgd2hpY2gKPj4+IHdvdWxkIGJlIG1pbmltdW0sIHNv
bWV0aW1lcywgaXQgcmVxdWlyZXMgbW9yZS4KPj4+Cj4+PiBUbyBtZWV0IHRoZSByZXF1aXJlbWVu
dCwgYSBvcHRpb24gcmVzZXJ2ZXMgMzAwTSBDTUEgYXJlYSBhbmQKPj4+IHJlcXVlc3RzIHRoZSB3
aG9sZSAzMDBNIGNvbnRpZ3VvdXMgbWVtb3J5LiBIb3dldmVyLCBpdCBkb2Vzbid0Cj4+PiB3b3Jr
IGlmIGV2ZW4gb25lIG9mIHRob3NlIHBhZ2VzIGluIHRoZSByYW5nZSBpcyBsb25nLXRlcm0gcGlu
bmVkCj4+PiBkaXJlY3RseSBvciBpbmRpcmVjdGx5LiBUaGUgb3RoZXIgb3B0aW9uIGlzIHRvIGFz
ayBoaWdoZXItb3JkZXIKPj4KPj4gTXkgbGF0ZXN0IGtub3dsZWRnZSBpcyB0aGF0IHBhZ2VzIGlu
IHRoZSBDTUEgYXJlYSBhcmUgbmV2ZXIgbG9uZyB0ZXJtCj4+IHBpbm5lZC4KPj4KPj4gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIwMTEyMzA5MDEyOS5HRDI3NDg4QGRoY3AyMi5zdXNl
LmN6Lwo+Pgo+PiAiZ3VwIGFscmVhZHkgdHJpZXMgdG8gZGVhbCB3aXRoIGxvbmcgdGVybSBwaW5z
IG9uIENNQSByZWdpb25zIGFuZCBtaWdyYXRlCj4+IHRvIGEgbm9uIENNQSByZWdpb24uIEhhdmUg
YSBsb29rIGF0IF9fZ3VwX2xvbmd0ZXJtX2xvY2tlZC4iCj4+Cj4+IFdlIHNob3VsZCByYXRoZXIg
aWRlbnRpZnkgd2F5cyBob3cgdGhhdCBpcyBzdGlsbCBwb3NzaWJsZSBhbmQgZ2V0IHJpZCBvZgo+
PiB0aGVtLgo+Pgo+Pgo+PiBOb3csIHNob3J0LXRlcm0gcGlubmluZ3MgYW5kIFBDUCBhcmUgb3Ro
ZXIgaXNzdWVzIHdoZXJlCj4+IGFsbG9jX2NvbnRpZ19yYW5nZSgpIGNvdWxkIGJlIGltcHJvdmVk
IChlLmcuLCBpbiBjb250cmFzdCB0byBhIEZBU1QKPj4gbW9kZSwgYSBIQVJEIG1vZGUgd2hpY2gg
dGVtcG9yYXJpbHkgZGlzYWJsZXMgdGhlIFBDUCwgLi4uKS4KPiAKPiBBZ3JlZWQhCj4gCj4+PiBz
aXplIChlLmcuLCAyTSkgdGhhbiByZXF1ZXN0ZWQgb3JkZXIoNjRLKSByZXBlYXRlZGx5IHVudGls
IGRyaXZlcgo+Pj4gY291bGQgZ2F0aGVyIG5lY2Vzc2FyeSBhbW91bnQgb2YgbWVtb3J5LiBCYXNp
Y2FsbHksIHRoaXMgYXBwcm9hY2gKPj4+IG1ha2VzIHRoZSBhbGxvY2F0aW9uIHZlcnkgc2xvdyBk
dWUgdG8gY21hX2FsbG9jJ3MgZnVuY3Rpb24KPj4+IHNsb3duZXNzIGFuZCBpdCBjb3VsZCBiZSBz
dHVjayBvbiBvbmUgb2YgdGhlIHBhZ2VibG9ja3MgaWYgaXQKPj4+IGVuY291bnRlcnMgdW5taWdy
YXRhYmxlIHBhZ2UuCj4+Pgo+Pj4gVG8gc29sdmUgdGhlIGlzc3VlLCB0aGlzIHBhdGNoIGludHJv
ZHVjZXMgY21hX2FsbG9jX2J1bGsuCj4+Pgo+Pj4gCWludCBjbWFfYWxsb2NfYnVsayhzdHJ1Y3Qg
Y21hICpjbWEsIHVuc2lnbmVkIGludCBhbGlnbiwKPj4+IAkJYm9vbCBmYXN0LCB1bnNpZ25lZCBp
bnQgb3JkZXIsIHNpemVfdCBucl9yZXF1ZXN0cywKPj4+IAkJc3RydWN0IHBhZ2UgKipwYWdlX2Fy
cmF5LCBzaXplX3QgKm5yX2FsbG9jYXRlZCk7Cj4+Pgo+Pj4gTW9zdCBwYXJhbWV0ZXJzIGFyZSBz
YW1lIHdpdGggY21hX2FsbG9jIGJ1dCBpdCBhZGRpdGlvbmFsbHkgcGFzc2VzCj4+PiB2ZWN0b3Ig
YXJyYXkgdG8gc3RvcmUgYWxsb2NhdGVkIG1lbW9yeS4gV2hhdCdzIGRpZmZlcmVudCB3aXRoIGNt
YV9hbGxvYwo+Pj4gaXMgaXQgd2lsbCBza2lwIHBhZ2VibG9ja3Mgd2l0aG91dCB3YWl0aW5nL3N0
b3BwaW5nIGlmIGl0IGhhcyB1bm1vdmFibGUKPj4+IHBhZ2Ugc28gdGhhdCBBUEkgY29udGludWVz
IHRvIHNjYW4gb3RoZXIgcGFnZWJsb2NrcyB0byBmaW5kIHJlcXVlc3RlZAo+Pj4gb3JkZXIgcGFn
ZS4KPj4+Cj4+PiBjbWFfYWxsb2NfYnVsayBpcyBiZXN0IGVmZm9ydCBhcHByb2FjaCBpbiB0aGF0
IGl0IHNraXBzIHNvbWUgcGFnZWJsb2Nrcwo+Pj4gaWYgdGhleSBoYXZlIHVubW92YWJsZSBwYWdl
cyB1bmxpa2UgY21hX2FsbG9jLiBJdCBkb2Vzbid0IG5lZWQgdG8gYmUKPj4+IHBlcmZlY3QgZnJv
bSB0aGUgYmVnaW5uaW5nIGF0IHRoZSBjb3N0IG9mIHBlcmZvcm1hbmNlLiBUaHVzLCB0aGUgQVBJ
Cj4+PiB0YWtlcyAiYm9vbCBmYXN0IHBhcmFtZXRlciIgd2hpY2ggaXMgcHJvcGFnYXRlZCBpbnRv
IGFsbG9jX2NvbnRpZ19yYW5nZSB0bwo+Pj4gYXZvaWQgc2lnbmlmaWNhdCBvdmVyaGVhZCBmdW5j
dGlvbnMgdG8gaW5yZWNhc2UgQ01BIGFsbG9jYXRpb24gc3VjY2Vzcwo+Pj4gcmF0aW8oZS5nLiwg
bWlncmF0aW9uIHJldHJpYWwsIFBDUCwgTFJVIGRyYWluaW5nIHBlciBwYWdlYmxvY2spCj4+PiBh
dCB0aGUgY29zdCBvZiBsZXNzIGFsbG9jYXRpb24gc3VjY2VzcyByYXRpby4gSWYgdGhlIGNhbGxl
ciBjb3VsZG4ndAo+Pj4gYWxsb2NhdGUgZW5vdWdoLCB0aGV5IGNvdWxkIGNhbGwgaXQgd2l0aCAi
ZmFsc2UiIHRvIGluY3JlYXNlIHN1Y2Nlc3MgcmF0aW8KPj4+IGlmIHRoZXkgYXJlIG9rYXkgdG8g
ZXhwZW5zZSB0aGUgb3ZlcmhlYWQgZm9yIHRoZSBzdWNjZXNzIHJhdGlvLgo+Pgo+PiBKdXN0IHNv
IEkgdW5kZXJzdGFuZCB3aGF0IHRoZSBpZGVhIGlzOgo+Pgo+PiBhbGxvY19jb250aWdfcmFuZ2Uo
KSBzb21ldGltZXMgZmFpbHMgb24gQ01BIHJlZ2lvbnMgd2hlbiB0cnlpbmcgdG8KPj4gYWxsb2Nh
dGUgYmlnIGNodW5rcyAoZS5nLiwgMzAwTSkuIEluc3RlYWQgb2YgdGFja2xpbmcgdGhhdCBpc3N1
ZSwgeW91Cj4+IHJhdGhlciBhbGxvY2F0ZSBwbGVudHkgb2Ygc21hbGwgY2h1bmtzLCBhbmQgbWFr
ZSB0aGVzZSBzbWFsbCBhbGxvY2F0aW9ucwo+PiBmYWlsIGZhc3Rlci8gbWFrZSB0aGUgYWxsb2Nh
dGlvbnMgbGVzcyByZWxpYWJsZS4gQ29ycmVjdD8KPj4KPj4gSSBkb24ndCByZWFsbHkgaGF2ZSBh
IHN0cm9uZyBvcGluaW9uIG9uIHRoYXQuIEdpdmluZyB1cCBmYXN0IHJhdGhlciB0aGFuCj4+IHRy
eWluZyBmb3IgbG9uZ2VyIHNvdW5kcyBsaWtlIGEgdXNlZnVsIHRoaW5nIHRvIGhhdmUgLSBidXQg
SSB3b25kZXIgaWYKPj4gaXQncyBzdHJpY3RseSBuZWNlc3NhcnkgZm9yIHRoZSB1c2UgY2FzZSB5
b3UgZGVzY3JpYmUuCj4+Cj4+IEknZCBsaWtlIHRvIGhlYXIgTWljaGFscyBvcGluaW9uIG9uIHRo
YXQuCj4gCj4gV2VsbCwgd2hhdCBJIGNhbiBzZWUgaXMgdGhhdCB0aGlzIG5ldyBpbnRlcmZhY2Ug
aXMgYW4gYW50aXBhdGVybiB0byBvdXIKPiBhbGxvY2F0aW9uIHJvdXRpbmVzLiBXZSB0ZW5kIHRv
IGNvbnRyb2wgYWxsb2NhdGlvbnMgYnkgZ2ZwIG1hc2sgeWV0IHlvdQo+IGFyZSBpbnRyb2R1Y2lu
ZyBhIGJvb2wgcGFyYW1ldGVyIHRvIG1ha2Ugc29tZXRoaW5nIGZhc3Rlci4uLiBXaGF0IHRoYXQK
PiByZWFsbHkgbWVhbnMgaXMgcmF0aGVyIGFyYml0cmFyeS4gV291bGQgaXQgbWFrZSBtb3JlIHNl
bnNlIHRvIHRlYWNoCj4gY21hX2FsbG9jIHJlc3AuIGFsbG9jX2NvbnRpZ19yYW5nZSB0byByZWNv
Z25pemUgR0ZQX05PV0FJVCwgR0ZQX05PUkVUUlkgcmVzcC4KPiBHRlBfUkVUUllfTUFZRkFJTCBp
bnN0ZWFkPwoKTWluY2hhbiBkaWQgdGhhdCBiZWZvcmUsIGJ1dCBJIGRpc2xpa2VkIGdsdWluZyB0
aGluZ3MgbGlrZSAiZG9uJ3QgZHJhaW4KbHJ1LCBkb24ndCBkcmFpbiBwY3AiIHRvIEdGUF9OT1JF
VFJZIGFuZCBzaGlmdGluZyByZXNwb25zaWJpbGl0eSB0byB0aGUKdXNlci4KCgotLSAKVGhhbmtz
LAoKRGF2aWQgLyBkaGlsZGVuYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
