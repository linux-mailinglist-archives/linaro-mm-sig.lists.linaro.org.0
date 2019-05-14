Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 272911C460
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 May 2019 10:08:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4016360EC0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 May 2019 08:08:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2F55D60E75; Tue, 14 May 2019 08:08:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 75BB26083D;
	Tue, 14 May 2019 08:07:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B3DBB607FB
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 May 2019 08:07:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 946386083D; Tue, 14 May 2019 08:07:54 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 0115E607FB
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 May 2019 08:07:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16548174-1500050 for multiple; Tue, 14 May 2019 09:06:14 +0100
MIME-Version: 1.0
To: Michael Yang <michael.yang@imgtec.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190514075537.GA7483@michael-imgtec>
References: <1554710495-6646-1-git-send-email-michael.yang@imgtec.com>
 <1557376451-20164-1-git-send-email-michael.yang@imgtec.com>
 <155740236592.28545.17880521046408313036@skylake-alporthouse-com>
 <20190514075537.GA7483@michael-imgtec>
Message-ID: <155782117405.2525.2694876407407711784@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 14 May 2019 09:06:14 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: gustavo@padovan.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 gregkh@linuxfoundation.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [EXTERNAL] Re: [PATCH] sync_file: Return
 reasonable timestamp when merging signaled fences
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

UXVvdGluZyBNaWNoYWVsIFlhbmcgKDIwMTktMDUtMTQgMDg6NTU6MzcpCj4gT24gVGh1LCBNYXkg
MDksIDIwMTkgYXQgMTI6NDY6MDVQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVv
dGluZyBNaWNoYWVsIFlhbmcgKDIwMTktMDUtMDkgMDU6MzQ6MTEpCj4gPiA+IElmIGFsbCB0aGUg
c3luYyBwb2ludHMgd2VyZSBzaWduYWxlZCBpbiBib3RoIGZlbmNlcyBhIGFuZCBiLAo+ID4gPiB0
aGVyZSB3YXMgb25seSBvbmUgc3luYyBwb2ludCBpbiBtZXJnZWQgZmVuY2Ugd2hpY2ggaXMgYV9m
ZW5jZVswXS4KPiA+ID4gVGhlIEZlbmNlIHN0cnVjdHVyZSBpbiBhbmRyb2lkIGZyYW1ld29yayBt
aWdodCBiZSBjb25mdXNlZCBhYm91dAo+ID4gPiB0aW1lc3RhbXAgaWYgdGhlcmUgd2VyZSBhbnkg
c3luYyBwb2ludHMgd2hpY2ggd2VyZSBzaWduYWxlZCBhZnRlcgo+ID4gPiBhX2ZlbmNlWzBdLiBJ
dCBtaWdodCBiZSBtb3JlIHJlYXNvbmFibGUgdG8gdXNlIHRpbWVzdGFtcCBvZiBsYXN0IHNpZ25h
bGVkCj4gPiA+IHN5bmMgcG9pbnQgdG8gcmVwcmVzZW50IHRoZSBtZXJnZWQgZmVuY2UuCj4gPiA+
IFRoZSBpc3N1ZSBjYW4gYmUgZm91bmQgZnJvbSBFR0wgZXh0ZW5zaW9uIEFORFJPSURfZ2V0X2Zy
YW1lX3RpbWVzdGFtcHMuCj4gPiA+IFNvbWV0aW1lcyB0aGUgcmV0dXJuIHZhbHVlIG9mIEVHTF9S
RUFEU19ET05FX1RJTUVfQU5EUk9JRCBpcyBoZWFkIG9mCj4gPiA+IHRoZSByZXR1cm4gdmFsdWUg
b2YgRUdMX1JFTkRFUklOR19DT01QTEVURV9USU1FX0FORFJPSUQuCj4gPiA+IFRoYXQgbWVhbnMg
ZGlzcGxheS9jb21wb3NpdGlvbiBoYWQgYmVlbiBjb21wbGV0ZWQgYmVmb3JlIHJlbmRlcmluZwo+
ID4gPiB3YXMgY29tcGxldGVkIHRoYXQgaXMgaW5jb3JyZWN0Lgo+ID4gPiAKPiA+ID4gU29tZSBk
aXNjdXNzaW9uIGNhbiBiZSBmb3VuZCBhdDoKPiA+ID4gaHR0cHM6Ly91cmxkZWZlbnNlLnByb29m
cG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19hbmRyb2lkLTJEcmV2aWV3Lmdvb2dsZXNvdXJj
ZS5jb21fY19rZXJuZWxfY29tbW9uXy0yQl85MDcwMDkmZD1Ed0lGYVEmYz1icTlwcG1ndlN3M29R
RmZSODcxRF93JnI9TmdnNnZob3VQa2d3U0liRE1VN3JETjBaZlQyUWF4NTB4dVdrWFhxUTN6dyZt
PU45UjlkWEdKM3prMGUwZ1hOTTR0c2lybzd4Q09MbFd4NmMzSEFFc2VTU3cmcz02c1kydDlpMnd2
eWxXSC1yUFVsdlkxTUl1V0tqQ1B6VDhTZUNncFpPSUdrJmU9IAo+ID4gPiAKPiA+ID4gU2lnbmVk
LW9mZi1ieTogTWljaGFlbCBZYW5nIDxtaWNoYWVsLnlhbmdAaW1ndGVjLmNvbT4KPiA+ID4gLS0t
Cj4gPiA+IEhpLAo+ID4gPiBJIGRpZG4ndCBnZXQgcmVzcG9uc2Ugc2luY2UgSSBwcmV2aW91c2x5
IHNlbnQgdGhpcyBhIG1vbnRoIGFnby4KPiA+ID4gQ291bGQgc29tZW9uZSBoYXZlIGEgY2hhbmNl
IHRvIGxvb2sgYXQgaXQgcGxlYXNlPwo+ID4gPiBUaGFua3MuCj4gPiA+ICBkcml2ZXJzL2RtYS1i
dWYvc3luY19maWxlLmMgfCAyNSArKysrKysrKysrKysrKysrKysrKysrKy0tCj4gPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMgYi9kcml2ZXJzL2RtYS1i
dWYvc3luY19maWxlLmMKPiA+ID4gaW5kZXggNGY2MzA1Yy4uZDQ2YmZlMSAxMDA2NDQKPiA+ID4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9zeW5jX2ZpbGUuYwo+ID4gPiBAQCAtMjc0LDggKzI3NCwyOSBAQCBzdGF0aWMgc3RydWN0
IHN5bmNfZmlsZSAqc3luY19maWxlX21lcmdlKGNvbnN0IGNoYXIgKm5hbWUsIHN0cnVjdCBzeW5j
X2ZpbGUgKmEsCj4gPiA+ICAgICAgICAgZm9yICg7IGlfYiA8IGJfbnVtX2ZlbmNlczsgaV9iKysp
Cj4gPiA+ICAgICAgICAgICAgICAgICBhZGRfZmVuY2UoZmVuY2VzLCAmaSwgYl9mZW5jZXNbaV9i
XSk7Cj4gPiA+ICAKPiA+ID4gLSAgICAgICBpZiAoaSA9PSAwKQo+ID4gPiAtICAgICAgICAgICAg
ICAgZmVuY2VzW2krK10gPSBkbWFfZmVuY2VfZ2V0KGFfZmVuY2VzWzBdKTsKPiA+ID4gKyAgICAg
ICAvKiBJZiBhbGwgdGhlIHN5bmMgcHRzIHdlcmUgc2lnbmFsZWQsIHRoZW4gYWRkaW5nIHRoZSBz
eW5jX3B0IHdobwo+ID4gPiArICAgICAgICAqIHdhcyB0aGUgbGFzdCBzaWduYWxlZCB0byB0aGUg
ZmVuY2UuCj4gPiA+ICsgICAgICAgICovCj4gPiA+ICsgICAgICAgaWYgKGkgPT0gMCkgewo+ID4g
PiArICAgICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqbGFzdF9zaWduYWxlZF9zeW5jX3B0
ID0gYV9mZW5jZXNbMF07Cj4gPiA+ICsgICAgICAgICAgICAgICBpbnQgaXRlcjsKPiA+ID4gKwo+
ID4gPiArICAgICAgICAgICAgICAgZm9yIChpdGVyID0gMTsgaXRlciA8IGFfbnVtX2ZlbmNlczsg
aXRlcisrKSB7Cj4gPiAKPiA+IElmIHRoZXJlIGlzIG1vcmUgdGhhbiBvbmUgZmVuY2UsIHN5bmNf
ZmlsZS0+ZmVuY2UgaXMgYSBmZW5jZV9hcnJheSBhbmQKPiA+IGl0cyB0aW1lc3RhbXAgaXMgd2hh
dCB5b3Ugd2FudC4gSWYgdGhlcmUgaXMgb25lIGZlbmNlLCBzeW5jX2ZpbGUtPmZlbmNlCj4gPiBp
cyBhIHBvaW50ZXIgdG8gdGhhdCBmZW5jZSwgYW5kIG5hdHVyYWxseSBoYXMgdGhlIHJpZ2h0IHRp
bWVzdGFtcC4KPiA+IAo+ID4gSW4gc2hvcnQsIHRoaXMgc2hvdWxkIGJlIGhhbmRsZWQgYnkgZG1h
X2ZlbmNlX2FycmF5X2NyZWF0ZSgpIHdoZW4gZ2l2ZW4KPiA+IGEgY29tcGxldGUgc2V0IG9mIHNp
Z25hbGVkIGZlbmNlcywgaXQgdG9vIHNob3VsZCBpbmhlcml0IHRoZSBzaWduYWxlZAo+ID4gc3Rh
dHVzIHdpdGggdGhlIHRpbWVzdGFtcCBiZWluZyB0YWtlbiBmcm9tIHRoZSBsYXN0IGZlbmNlLiBJ
dCBzaG91bGQKPiA+IGFsc28gYmUgY2FyZWZ1bCB0byBpbmhlcml0IHRoZSBlcnJvciBzdGF0dXMu
Cj4gPiAtQ2hyaXMKPiBUaGFua3MgQ2hyaXMgZm9yIHRoZSBpbnB1dHMuIEZvciB0aGlzIGNhc2Us
IHRoZXJlIHdpbGwgYmUgb25seSBvbmUgZmVuY2UKPiBpbiBzeW5jX2ZpbGUtPmZlbmNlIGFmdGVy
IGRvaW5nIHN5bmNfZmlsZV9tZXJnZSgpLiBSZWdhcmRpbmcgdG8gdGhlIGN1cnJlbnQKPiBpbXBs
ZW1lbnRhdGlvbiwgZG1hX2ZlbmNlX2FycmF5X2NyZWF0ZSgpIGlzIG5vdCBjYWxsZWQgYXMgbnVt
X2ZlbmNlcyBpcyBlcXVhbAo+IHRvIDEuIEkgd2FzIHdvbmRlcmluZyBkbyB5b3Ugc3VnZ2VzdCB0
aGF0IHdlIHBhc3MgYSBjb21wbGV0ZSBzZXQgb2Ygc2lnbmFsZWQKPiBmZW5jZXMgdG8gc3luY19m
aWxlX3NldF9mZW5jZSgpIGFuZCBoYW5kbGUgaXQgaW4gZG1hX2ZlbmNlX2FycmF5X2NyZWF0ZSgp
Lgo+IFRoYW5rcy4KCk5vLCBpbiB0aGUgY2FzZSB0aGVyZSBpcyBvbmx5IG9uZSBmZW5jZSwgd2Ug
anVzdCBpbmhlcml0IGl0cyB0aW1lc3RhbXAKYWxvbmcgd2l0aCBpdHMgZmVuY2Ugc3RhdHVzLiAo
QSBzaW5nbGUgZmVuY2UgaXMgdGhlIGRlZ2VuZXJhdGUgY2FzZSBvZgphIGZlbmNlIGFycmF5LikK
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
