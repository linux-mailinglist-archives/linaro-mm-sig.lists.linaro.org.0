Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E1D2CD2CF
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Dec 2020 10:47:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 198CD666EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Dec 2020 09:47:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0B2B260C15; Thu,  3 Dec 2020 09:47:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0ABA1617B9;
	Thu,  3 Dec 2020 09:47:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 62D2C60C15
 for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Dec 2020 09:47:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4B902617B9; Thu,  3 Dec 2020 09:47:16 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by lists.linaro.org (Postfix) with ESMTPS id 1F79860C15
 for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Dec 2020 09:47:15 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-356-QzVy-pg6OUCfjbpkjQUCRA-1; Thu, 03 Dec 2020 04:47:10 -0500
X-MC-Unique: QzVy-pg6OUCfjbpkjQUCRA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1A128042C6;
 Thu,  3 Dec 2020 09:47:07 +0000 (UTC)
Received: from [10.36.113.250] (ovpn-113-250.ams2.redhat.com [10.36.113.250])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CF75A189C4;
 Thu,  3 Dec 2020 09:47:03 +0000 (UTC)
To: Michal Hocko <mhocko@suse.com>
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-3-minchan@kernel.org>
 <8f006a4a-c21d-9db3-5493-fb1cc651b0cf@redhat.com>
 <20201202154915.GU17338@dhcp22.suse.cz> <X8e9tSwcsrEsAv1O@google.com>
 <20201202164834.GV17338@dhcp22.suse.cz> <X8fU1ddmsSfuV6sD@google.com>
 <20201202185107.GW17338@dhcp22.suse.cz> <X8fqU82GXmu57f7V@google.com>
 <f0e980cb-cc74-82e8-6ccf-09030a96103a@redhat.com>
 <20201203082810.GX17338@dhcp22.suse.cz>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <c5209dce-dc30-6d8d-e8f8-c5412b072310@redhat.com>
Date: Thu, 3 Dec 2020 10:47:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201203082810.GX17338@dhcp22.suse.cz>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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

T24gMDMuMTIuMjAgMDk6MjgsIE1pY2hhbCBIb2NrbyB3cm90ZToKPiBPbiBXZWQgMDItMTItMjAg
MjE6MjI6MzYsIERhdmlkIEhpbGRlbmJyYW5kIHdyb3RlOgo+PiBPbiAwMi4xMi4yMCAyMDoyNiwg
TWluY2hhbiBLaW0gd3JvdGU6Cj4+PiBPbiBXZWQsIERlYyAwMiwgMjAyMCBhdCAwNzo1MTowN1BN
ICswMTAwLCBNaWNoYWwgSG9ja28gd3JvdGU6Cj4gWy4uLl0KPj4+PiBJIGFtIHN0aWxsIG5vdCBz
dXJlIGEgc3BlY2lmaWMgZmxhZyBpcyBhIGdvb2QgaW50ZXJmYWNlLiBSZWFsbHkgY2FuIHRoaXMK
Pj4+PiBiZSBnZnBfbWFzayBpbnN0ZWFkPwo+Pj4KPj4+IEkgYW0gbm90IHN0cm9uZyhldmVuLCBJ
IGRpZCBpdCB3aXRoIEdGUF9OT1JFVFJZKSBidXQgRGF2aWQgd2FudGVkIHRvCj4+PiBoYXZlIHNw
ZWNpYWwgbW9kZSBhbmQgSSBhZ3JlZWQgd2hlbiBoZSBtZW50aW9uZWQgQUxMT0NfQ09OVElHX0hB
UkQgYXMKPj4+IG9uZSBvZiBvcHRpb25zIGluIGZ1dHVyZShpdCB3b3VsZCBiZSBoYXJkIHRvIGlu
ZGljYXRlIHRoYXQgbW9kZSB3aXRoCj4+PiBnZnAgZmxhZ3MpLgo+Pgo+PiBJIGNhbid0IHRlbGwg
cmVnYXJkaW5nIHRoZSBDTUEgaW50ZXJmYWNlLCBidXQgZm9yIHRoZSBhbGxvY19jb250aWcoKQo+
PiBpbnRlcmZhY2UgSSB0aGluayBtb2RlcyBtYWtlIHNlbnNlLiBZZXMsIGl0J3MgZGlmZmVyZW50
IHRvIG90aGVyCj4+IGFsbG9jYXRlcnMsIGJ1dCB0aGUgY29udGlnIHJhbmdlIGFsbG9jYXRlciBp
cyBkaWZmZXJlbnQgYWxyZWFkeS4gRS5nLiwKPj4gdGhlIENNQSBhbGxvY2F0ZXIgbW9zdGx5IGhp
ZGVzICJ3aGljaCBleGFjdCBQRk5zIHlvdSB0cnkgdG8gYWxsb2NhdGUiLgo+IAo+IFllcywgYWxs
b2NfY29udGlnX3JhbmdlIGlzIGEgbG93IGxldmVsIEFQSSBidXQgaXQgYWxyZWFkeSBoYXMgYSBn
ZnBfbWFzawo+IHBhcmFtZXRlci4gQWRkaW5nIHlldCBhbm90aGVyIGFsbG9jYXRpb24gbW9kZSBz
b3VuZHMgbGlrZSBBUEkKPiBjb252b2x1dGlvbiB0byBtZS4KCldlbGwsIGlmIGFub3RoZXIgcGFy
YW1ldGVyIGlzIGEgY29uY2Vybiwgd2UgY2FuIGludHJvZHVjZQoKYWxsb2NfY29udGlnX3Jhbmdl
X2Zhc3QoKQoKaW5zdGVhZC4KCj4gCj4+IEluIHRoZSBjb250aWcgcmFuZ2UgYWxsb2NhdGVyLCBn
ZnAgZmxhZ3MgYXJlIGN1cnJlbnRseSB1c2VkIHRvIGV4cHJlc3MKPj4gaG93IHRvIGFsbG9jYXRl
IHBhZ2VzIHVzZWQgYXMgbWlncmF0aW9uIHRhcmdldHMuIEkgZG9uJ3QgdGhpbmsgbWFuZ2xpbmcK
Pj4gaW4gb3RoZXIgZ2ZwIGZsYWdzIChvciBldmVuIG92ZXJsb2FkaW5nIHRoZW0pIG1ha2VzIHRo
aW5ncyBhIGxvdAo+PiBjbGVhcmVyLiBFLmcuLCBHRlBfTk9SRVRSWTogZG9uJ3QgcmV0cnkgdG8g
YWxsb2NhdGUgbWlncmF0aW9uIHRhcmdldHM/Cj4+IGRvbid0IHJldHJ5IHRvIG1pZ3JhdGUgcGFn
ZXM/IGJvdGg/Cj4+Cj4+IEFzIEkgc2FpZCwgb3RoZXIgYXNwZWN0cyBtaWdodCBiZSBoYXJkZXIg
dG8gbW9kZWwgKGUuZy4sIGRvbid0IGRyYWluCj4+IExSVSkgYW5kIGhpZGluZyB0aGVtIGJlaGlu
ZCBnZW5lcmljIGdmcCBmbGFncyAoZS5nLiwgR0ZQX05PUkVUUlkpIGZlZWxzCj4+IHdyb25nLgo+
Pgo+PiBXaXRoIHRoZSBtb2RlLCB3ZSdyZSBleHByZXNzaW5nIGRldGFpbHMgZm9yIHRoZSBuZWNl
c3NhcnkgcGFnZQo+PiBtaWdyYXRpb24uIFN1Z2dlc3Rpb25zIG9uIGhvdyB0byBtb2RlbCB0aGF0
IGFyZSB3ZWxjb21lLgo+IAo+IFRoZSBxdWVzdGlvbiBpcyB3aGV0aGVyIHRoZSBjYWxsZXIgc2hv
dWxkIHJlYWxseSBoYXZlIHN1Y2ggYW4gaW50aW1hdGUKPiBrbm93bGVkZ2UgYW5kIGNvbnRyb2wg
b2YgdGhlIGFsbG9jX2NvbnRpZ19yYW5nZSBpbXBsZW1lbnRhdGlvbi4gVGhpcyBhbGwKPiBhcmUg
aW1wbGVtZW50YXRpb24gZGV0YWlscy4gU2hvdWxkIHJlYWxseSBhbnlib2R5IHRoaW5rIGFib3V0
IGhvdyBtYW55Cj4gdGltZXMgbWlncmF0aW9uIHJldHJpZXMgb3IgY29udHJvbCBMUlUgZHJhaW5p
bmc/IFRob3NlIGNhbiBjaGFuZ2UgaW4gdGhlCgpUaGUgcXVlc3Rpb24gaXMgbm90ICJob3cgbWFu
eSB0aW1lcyIsIHJhdGhlciAiaWYgYXQgYWxsIi4gSSBjYW4KdW5kZXJzdGFuZCB0aGUgcG9zc2li
bGUgcGVyZm9ybWFuY2UgaW1wcm92ZW1lbnRzIGJ5IGxldHRpbmcgdGhlIGNhbGxlcgpoYW5kbGUg
dGhpbmdzIChscnUgZHJhaW5pbmcsIHBjcCBkcmFpbmluZykgbGlrZSB0aGF0IHdoZW4gaXNzdWlu
ZwpnYXppbGxpb25zIG9mIGFsbG9jX2NvbnRpZ19yYW5nZSgpIGNhbGxzLgoKPiBmdXR1cmUgYW5k
IEkgZG8gbm90IHRoaW5rIHdlIHJlYWxseSB3YW50IHRvIGdvIG92ZXIgYWxsIHVzZXJzIGdyb3du
IG92ZXIKPiB0aGF0IHRpbWUgYW5kIHRyeSB0byBkZWR1Y2Ugd2hhdCB3YXMgdGhlIGludGVudGlv
biBiZWhpbmQuCgpUaGF0J3Mgd2h5IEkgdGhpbmsgd2UgbmVlZCBhIGNsZWFyIG1lY2hhbmlzbSB0
byBleHByZXNzIHRoZSBleHBlY3RlZApiZWhhdmlvciAtIHNvbWV0aGluZyB3ZSBjYW4gcHJvcGVy
bHkgZG9jdW1lbnQgYW5kIHVzZXJzIGNhbiBhY3R1YWxseQp1bmRlcnN0YW5kIHRvIG9wdGltaXpl
IGZvciAtIGFuZCB3ZSBjYW4gZml4IHRoZW0gdXAgd2hlbiB0aGUgZG9jdW1lbnRlZApiZWhhdmlv
ciBjaGFuZ2VzLiBNYW5nbGluZyB0aGlzIGludG8gc29tZXdoYXQtZml0dGluZyBnZnAgZmxhZ3Mg
bWFrZXMKdGhlIGludGVyZmFjZSBoYXJkZXIgdG8gdXNlIGFuZCBtb3JlIGVycm9yLXByb25lIElN
SE8uCgo+IAo+IEkgdGhpbmsgd2Ugc2hvdWxkIGFpbSBhdCBlYXN5IGFuZCB2ZXJ5IGhpZ2hsZXZl
bCBiZWhhdmlvcjoKPiAtIEdGUF9OT1dBSVQgLSB1bnN1cHBvcnRlZCBjdXJyZW50bHkgSUlSQyBi
dXQgc29tZXRoaW5nIHRoYXQgc29tZXRoaW5nCj4gICB0aGF0IHNob3VsZCBiZSBwb3NzaWJsZSB0
byBpbXBsZW1lbnQuIElzb2xhdGlvbiBpcyBub24gYmxvY2tpbmcsCj4gICBtaWdyYXRpb24gY291
bGQgYmUgc2tpcHBlZAo+IC0gR0ZQX0tFUk5FTCAtIGRlZmF1bHQgYmVoYXZpb3Igd2hhdGV2ZXIg
dGhhdCBtZWFucwo+IC0gR0ZQX05PUkVUUlkgLSBvcHBvcnR1bmlzdGljIGFsbG9jYXRpb24gYXMg
bGlnaHR3ZWlnaHQgYXMgd2UgY2FuIGdldC4KPiAgIEZhaWx1cmVzIHRvIGJlIGV4cGVjdGVkIGFs
c28gZm9yIHRyYW5zaWVudCByZWFzb25zLgo+IC0gR0ZQX1JFVFJZX01BWUZBSUwgLSB0cnkgaGFy
ZCBidXQgbm90IGFzIGhhcmQgYXMgdG8gdHJpZ2dlciBkaXNydXB0aW9uCj4gICAoZS5nLiB2aWEg
b29tIGtpbGxlcikuCgpJIHRoaW5rIHdlIGN1cnJlbnRseSBzZWUgZGVtYW5kIGZvciAzIG1vZGVz
IGZvciBhbGxvY19jb250aWdfcmFuZ2UoKQoKYSkgbm9ybWFsCgpBcyBpcy4gVHJ5LCBidXQgZG9u
J3QgdHJ5IHRvbyBoYXJkLiBFLmcuLCBkcmFpbiBMUlUsIGRyYWluIFBDUCwgcmV0cnkgYQpjb3Vw
bGUgb2YgdGltZXMuIEZhaWx1cmVzIGluIHNvbWUgY2FzZXMgKHNob3J0LXRlcm0gcGlubmluZywg
UENQIHJhY2VzKQphcmUgc3RpbGwgcG9zc2libGUgYW5kIGFjY2VwdGFibGUuCgpHRlBfUkVUUllf
TUFZRkFJTCA/CgpFLmcuLCAiQWxsb2NhdGlvbnMgd2l0aCB0aGlzIGZsYWcgbWF5IGZhaWwsIGJ1
dCBvbmx5IHdoZW4gdGhlcmUgaXMKZ2VudWluZWx5IGxpdHRsZSB1bnVzZWQgbWVtb3J5LiIgLSBj
dXJyZW50IGRlc2NyaXB0aW9uIGRvZXMgbm90IG1hdGNoIGF0CmFsbC4gV2hlbiBhbGxvY2F0aW5n
IHJhbmdlcyB0aGluZ3MgYmVoYXZlIGNvbXBsZXRlbHkgZGlmZmVyZW50LgoKCmIpIGZhc3QKClRy
eSwgYnV0IGZhaWwgZmFzdC4gTGVhdmUgb3B0aW1pemF0aW9ucyB0aGF0IGNhbiBpbXByb3ZlIHRo
ZSByZXN1bHQgdG8KdGhlIGNhbGxlci4gRS5nLiwgZG9uJ3QgZHJhaW4gTFJVLCBkb24ndCBkcmFp
biBQQ1AsIGRvbid0IHJldHJ5LgpGcmVxdWVudCBmYWlsdXJlcyBhcmUgZXhwZWN0ZWQgYW5kIGFj
Y2VwdGFibGUuCgpfX0dGUF9OT1JFVFJZID8KCkUuZy4sICJUaGUgVk0gaW1wbGVtZW50YXRpb24g
d2lsbCB0cnkgb25seSB2ZXJ5IGxpZ2h0d2VpZ2h0IG1lbW9yeQpkaXJlY3QgcmVjbGFpbSB0byBn
ZXQgc29tZSBtZW1vcnkgdW5kZXIgbWVtb3J5IHByZXNzdXJlIiAtIGFnYWluLCBJCnRoaW5rIGN1
cnJlbnQgZGVzY3JpcHRpb24gZG9lcyBub3QgcmVhbGx5IG1hdGNoLgoKCmMpIGhhcmQKClRyeSBo
YXJkLCBFLmcuLCB0ZW1wb3JhcmlseSBkaXNhYmxpbmcgdGhlIFBDUC4gQ2VydGFpbmx5IG5vdApf
X0dGUF9OT0ZBSUwsIHRoYXQgd291bGQgYmUgaGlnaGx5IGRhbmdlcm91cy4gU28gbm8gZmxhZ3Mg
LyBHRlBfS0VSTkVMPwoKPiAKPiAtIF9fR0ZQX1RISVNfTk9ERSAtIHN0aWNrIHRvIGEgbm9kZSB3
aXRob3V0IGZhbGxiYWNrCj4gLSB3ZSBjYW4gc3VwcG9ydCB6b25lIG1vZGlmaWVycyBhbHRob3Vn
aCB0aGVyZSBpcyBubyBleGlzdGluZyB1c2VyLgo+IC0gX19HRlBfTk9XQVJOIC0gb2J2aW91cwo+
IAo+IEFuZCB0aGF0IGlzIGl0LiBPciBtYXliZSBJIGFtIHNlZWluZyB0aGF0IG92ZXJzaW1wbGlm
aWVkLgo+IAoKQWdhaW4sIEkgdGhpbmsgbW9zdCBmbGFncyBtYWtlIHNlbnNlIGZvciB0aGUgbWln
cmF0aW9uIHRhcmdldCBhbGxvY2F0aW9uCiBwYXRoIGFuZCBtYWlubHkgZGVhbCB3aXRoIE9PTSBz
aXR1YXRpb25zIGFuZCByZWNsYWltLiBGb3IgdGhlIG1pZ3JhdGlvbgpwYXRoIC0gd2hpY2ggaXMg
c3BlY2lmaWMgdG8gdGhlIGFsbG9jX2NvbnRpZ19yYW5nZSgpIGFsbG9jYXRlciAtIHRoZXkKZG9u
J3QgcmVhbGx5IGFwcGx5IGFuZCBjcmVhdGUgbW9yZSBjb25mdXNpb24gdGhhbiB0aGV5IGFjdHVh
bGx5IGhlbHAgLSBJTUhPLgoKLS0gClRoYW5rcywKCkRhdmlkIC8gZGhpbGRlbmIKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
