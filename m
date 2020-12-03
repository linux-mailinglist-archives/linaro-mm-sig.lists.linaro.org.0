Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C329B2CD4FB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Dec 2020 12:58:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9D1960DD0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Dec 2020 11:58:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C2DD3666EC; Thu,  3 Dec 2020 11:58:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A003666E6;
	Thu,  3 Dec 2020 11:57:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 58FAF60DD0
 for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Dec 2020 11:57:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 421BF666E6; Thu,  3 Dec 2020 11:57:52 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by lists.linaro.org (Postfix) with ESMTPS id EC7AB60DD0
 for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Dec 2020 11:57:50 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-82-HS7KDxt4PYeY9vmr6b1FAg-1; Thu, 03 Dec 2020 06:57:49 -0500
X-MC-Unique: HS7KDxt4PYeY9vmr6b1FAg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F02E884A5E0;
 Thu,  3 Dec 2020 11:57:45 +0000 (UTC)
Received: from [10.36.113.250] (ovpn-113-250.ams2.redhat.com [10.36.113.250])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 00F485D9CA;
 Thu,  3 Dec 2020 11:57:40 +0000 (UTC)
To: Michal Hocko <mhocko@suse.com>
References: <8f006a4a-c21d-9db3-5493-fb1cc651b0cf@redhat.com>
 <20201202154915.GU17338@dhcp22.suse.cz> <X8e9tSwcsrEsAv1O@google.com>
 <20201202164834.GV17338@dhcp22.suse.cz> <X8fU1ddmsSfuV6sD@google.com>
 <20201202185107.GW17338@dhcp22.suse.cz> <X8fqU82GXmu57f7V@google.com>
 <f0e980cb-cc74-82e8-6ccf-09030a96103a@redhat.com>
 <20201203082810.GX17338@dhcp22.suse.cz>
 <c5209dce-dc30-6d8d-e8f8-c5412b072310@redhat.com>
 <20201203114748.GB17338@dhcp22.suse.cz>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <3a512f9c-a8e5-88ed-676a-7b9d4fb94a6c@redhat.com>
Date: Thu, 3 Dec 2020 12:57:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201203114748.GB17338@dhcp22.suse.cz>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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

T24gMDMuMTIuMjAgMTI6NDcsIE1pY2hhbCBIb2NrbyB3cm90ZToKPiBPbiBUaHUgMDMtMTItMjAg
MTA6NDc6MDIsIERhdmlkIEhpbGRlbmJyYW5kIHdyb3RlOgo+PiBPbiAwMy4xMi4yMCAwOToyOCwg
TWljaGFsIEhvY2tvIHdyb3RlOgo+IFsuLi5dCj4+PiBJIHRoaW5rIHdlIHNob3VsZCBhaW0gYXQg
ZWFzeSBhbmQgdmVyeSBoaWdobGV2ZWwgYmVoYXZpb3I6Cj4+PiAtIEdGUF9OT1dBSVQgLSB1bnN1
cHBvcnRlZCBjdXJyZW50bHkgSUlSQyBidXQgc29tZXRoaW5nIHRoYXQgc29tZXRoaW5nCj4+PiAg
IHRoYXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvIGltcGxlbWVudC4gSXNvbGF0aW9uIGlzIG5vbiBi
bG9ja2luZywKPj4+ICAgbWlncmF0aW9uIGNvdWxkIGJlIHNraXBwZWQKPj4+IC0gR0ZQX0tFUk5F
TCAtIGRlZmF1bHQgYmVoYXZpb3Igd2hhdGV2ZXIgdGhhdCBtZWFucwo+Pj4gLSBHRlBfTk9SRVRS
WSAtIG9wcG9ydHVuaXN0aWMgYWxsb2NhdGlvbiBhcyBsaWdodHdlaWdodCBhcyB3ZSBjYW4gZ2V0
Lgo+Pj4gICBGYWlsdXJlcyB0byBiZSBleHBlY3RlZCBhbHNvIGZvciB0cmFuc2llbnQgcmVhc29u
cy4KPj4+IC0gR0ZQX1JFVFJZX01BWUZBSUwgLSB0cnkgaGFyZCBidXQgbm90IGFzIGhhcmQgYXMg
dG8gdHJpZ2dlciBkaXNydXB0aW9uCj4+PiAgIChlLmcuIHZpYSBvb20ga2lsbGVyKS4KPj4KPj4g
SSB0aGluayB3ZSBjdXJyZW50bHkgc2VlIGRlbWFuZCBmb3IgMyBtb2RlcyBmb3IgYWxsb2NfY29u
dGlnX3JhbmdlKCkKPj4KPj4gYSkgbm9ybWFsCj4+Cj4+IEFzIGlzLiBUcnksIGJ1dCBkb24ndCB0
cnkgdG9vIGhhcmQuIEUuZy4sIGRyYWluIExSVSwgZHJhaW4gUENQLCByZXRyeSBhCj4+IGNvdXBs
ZSBvZiB0aW1lcy4gRmFpbHVyZXMgaW4gc29tZSBjYXNlcyAoc2hvcnQtdGVybSBwaW5uaW5nLCBQ
Q1AgcmFjZXMpCj4+IGFyZSBzdGlsbCBwb3NzaWJsZSBhbmQgYWNjZXB0YWJsZS4KPj4KPj4gR0ZQ
X1JFVFJZX01BWUZBSUwgPwo+IAo+IG5vcm1hbCBzaG91bGRuJ3QgcmVhbGx5IHJlcXVpcmUgYW55
Ym9keSB0byB0aGluayBhYm91dCBnZnAgZmxhZ3MgaGFyZC4KPiBUaGF0IHRvIG1vc3QgcGVvcGxl
IHJlYWxseSBtZWFucyBHRlBfS0VSTkVMLgo+IAo+PiBFLmcuLCAiQWxsb2NhdGlvbnMgd2l0aCB0
aGlzIGZsYWcgbWF5IGZhaWwsIGJ1dCBvbmx5IHdoZW4gdGhlcmUgaXMKPj4gZ2VudWluZWx5IGxp
dHRsZSB1bnVzZWQgbWVtb3J5LiIgLSBjdXJyZW50IGRlc2NyaXB0aW9uIGRvZXMgbm90IG1hdGNo
IGF0Cj4+IGFsbC4gV2hlbiBhbGxvY2F0aW5nIHJhbmdlcyB0aGluZ3MgYmVoYXZlIGNvbXBsZXRl
bHkgZGlmZmVyZW50Lgo+Pgo+Pgo+PiBiKSBmYXN0Cj4+Cj4+IFRyeSwgYnV0IGZhaWwgZmFzdC4g
TGVhdmUgb3B0aW1pemF0aW9ucyB0aGF0IGNhbiBpbXByb3ZlIHRoZSByZXN1bHQgdG8KPj4gdGhl
IGNhbGxlci4gRS5nLiwgZG9uJ3QgZHJhaW4gTFJVLCBkb24ndCBkcmFpbiBQQ1AsIGRvbid0IHJl
dHJ5Lgo+PiBGcmVxdWVudCBmYWlsdXJlcyBhcmUgZXhwZWN0ZWQgYW5kIGFjY2VwdGFibGUuCj4+
Cj4+IF9fR0ZQX05PUkVUUlkgPwo+Pgo+PiBFLmcuLCAiVGhlIFZNIGltcGxlbWVudGF0aW9uIHdp
bGwgdHJ5IG9ubHkgdmVyeSBsaWdodHdlaWdodCBtZW1vcnkKPj4gZGlyZWN0IHJlY2xhaW0gdG8g
Z2V0IHNvbWUgbWVtb3J5IHVuZGVyIG1lbW9yeSBwcmVzc3VyZSIgLSBhZ2FpbiwgSQo+PiB0aGlu
ayBjdXJyZW50IGRlc2NyaXB0aW9uIGRvZXMgbm90IHJlYWxseSBtYXRjaC4KPiAKPiBBZ3JlZWQu
IEFzIG1lbnRpb25lZCBhYm92ZSB0aGlzIHdvdWxkIGJlIGFuIG9wcG9ydHVuaXN0aWMgYWxsb2Nh
dGlvbgo+IG1vZGUuCj4gCj4gIAo+PiBjKSBoYXJkCj4+Cj4+IFRyeSBoYXJkLCBFLmcuLCB0ZW1w
b3JhcmlseSBkaXNhYmxpbmcgdGhlIFBDUC4gQ2VydGFpbmx5IG5vdAo+PiBfX0dGUF9OT0ZBSUws
IHRoYXQgd291bGQgYmUgaGlnaGx5IGRhbmdlcm91cy4gU28gbm8gZmxhZ3MgLyBHRlBfS0VSTkVM
Pwo+IAo+IE5PRkFJTCBzZW1hbnRpYyBpcyBvdXQgb2YgcXVlc3Rpb24uIFNob3VsZCB3ZSBoYXZl
IGEgbW9kZSB0byB0cnkgaGFyZGVyCj4gdGhhbiB0aGUgZGVmYXVsdD8gSSBkdW5uby4gRG8gd2Ug
aGF2ZSB1c2Vycz8gSSB0aGluayBSRVRSWV9NQVlGQUlMIGlzIGEKPiBtaWRkbGUgZ3JvdW5kIGJl
dHdlZW4gdGhlIGRlZmF1bHQgYW5kIE5PUkVUUlkgd2hpY2ggaXMganVzdCB0b28gZWFzeSB0bwo+
IGZhaWwuIFRoaXMgaXMgdGhlIGNhc2UgZm9yIHRoZSBhbGxvY2F0b3IgYXMgd2VsbC4gQW5kIGZy
b20gd2hhdCBJIGhhdmUKPiBzZWVuIHBlb3BsZSBhcmUgYWxyZWFkeSB1c2luZyBNQVlGQUlMIGlu
IG9yZGVyIHRvIHByZXZlbnQgb29tIGtpbGxlciBzbwo+IHRoaXMgaXMgYSBnZW5lcmFsbHkgcmVj
b2duaXplZCBwYXR0ZXJuLgoKdmlydGlvLW1lbSBtaWdodCBiZSBvbmUgdXNlci4gSXQgbWlnaHQg
Zmlyc3QgdHJ5IGluIG5vcm1hbCBtb2RlIHRvIGdldAphcyBtdWNoIG1lbW9yeSBvdXQgYXMgcG9z
c2libGUsIGJ1dCBzd2l0Y2ggdG8gaGFyZCBtb2RlIHdoZW4gaXQgbWlnaHQKbWFrZSBzZW5zZS4K
Cj4gCj4+PiAtIF9fR0ZQX1RISVNfTk9ERSAtIHN0aWNrIHRvIGEgbm9kZSB3aXRob3V0IGZhbGxi
YWNrCj4+PiAtIHdlIGNhbiBzdXBwb3J0IHpvbmUgbW9kaWZpZXJzIGFsdGhvdWdoIHRoZXJlIGlz
IG5vIGV4aXN0aW5nIHVzZXIuCj4+PiAtIF9fR0ZQX05PV0FSTiAtIG9idmlvdXMKPj4+Cj4+PiBB
bmQgdGhhdCBpcyBpdC4gT3IgbWF5YmUgSSBhbSBzZWVpbmcgdGhhdCBvdmVyc2ltcGxpZmllZC4K
Pj4+Cj4+Cj4+IEFnYWluLCBJIHRoaW5rIG1vc3QgZmxhZ3MgbWFrZSBzZW5zZSBmb3IgdGhlIG1p
Z3JhdGlvbiB0YXJnZXQgYWxsb2NhdGlvbgo+PiAgcGF0aCBhbmQgbWFpbmx5IGRlYWwgd2l0aCBP
T00gc2l0dWF0aW9ucyBhbmQgcmVjbGFpbS4gRm9yIHRoZSBtaWdyYXRpb24KPj4gcGF0aCAtIHdo
aWNoIGlzIHNwZWNpZmljIHRvIHRoZSBhbGxvY19jb250aWdfcmFuZ2UoKSBhbGxvY2F0ZXIgLSB0
aGV5Cj4+IGRvbid0IHJlYWxseSBhcHBseSBhbmQgY3JlYXRlIG1vcmUgY29uZnVzaW9uIHRoYW4g
dGhleSBhY3R1YWxseSBoZWxwIC0gSU1ITy4KPiAKPiBNaWdyYXRpb24gaXMgcmVhbGx5IGFuIGlt
cGxlbWVudGF0aW9uIGRldGFpbCBvZiB0aGlzIGludGVyZmFjZS4gWW91Cj4gc2hvdWxkbid0IGJl
IGV2ZW4gdGhpbmtpbmcgdGhhdCB0aGVyZSBpcyBhIG1pZ3JhdGlvbiB1bmRlcm5lYXRoIG5vdCBl
dmVuCj4gbWVudGlvbiB0byBhY3R1YWxseSB0cnlpbmcgdG8gY29udHJvbCBpdC4gCgpDTUE/IEkg
dGVuZCB0byBhZ3JlZS4KYWxsb2NfY29udGlnX3JhbmdlPyBJIGRpc2FncmVlLgoKLS0gClRoYW5r
cywKCkRhdmlkIC8gZGhpbGRlbmIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
