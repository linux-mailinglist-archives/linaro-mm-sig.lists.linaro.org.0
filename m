Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 792EC219F43
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:47:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A433A6604D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:47:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 96D696606D; Thu,  9 Jul 2020 11:47:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A0E71665CF;
	Thu,  9 Jul 2020 11:34:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C08B3604A8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 13:51:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AF93061633; Tue, 16 Jun 2020 13:51:33 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by lists.linaro.org (Postfix) with ESMTPS id B8DF4604A8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 13:51:31 +0000 (UTC)
IronPort-SDR: JZA+5g3RZ8eax0jfRMSH2E99MXx5CUvAANAAgnw9U/ogRCaX6qu2q3j4Qs5q+IGqXlxi+EKc/2
 fTQ2N1GQMTFw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 06:51:30 -0700
IronPort-SDR: ogW4H7xBR1Sr6HW6AaReAtVry2jrbZAZRyIw1lh+V1mRy224UiWIlJARsNhXBgxOa0Aot0hi8t
 8AEkucG69PyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="308461225"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga008.jf.intel.com with ESMTP; 16 Jun 2020 06:51:29 -0700
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jun 2020 06:51:28 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.74]) by
 FMSMSX126.amr.corp.intel.com ([169.254.1.76]) with mapi id 14.03.0439.000;
 Tue, 16 Jun 2020 06:51:28 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Charan Teja Kalla <charante@codeaurora.org>, Sumit Semwal
 <sumit.semwal@linaro.org>, "open list:DMA BUFFER SHARING FRAMEWORK"
 <linux-media@vger.kernel.org>, DRI mailing list
 <dri-devel@lists.freedesktop.org>
Thread-Topic: [PATCH] dmabuf: use spinlock to access dmabuf->name
Thread-Index: AQHWQWvsYI6eTL2/6UmOYEBVkPsE9KjbRi5A
Date: Tue, 16 Jun 2020 13:51:28 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663010F365EF5@fmsmsx107.amr.corp.intel.com>
References: <316a5cf9-ca71-6506-bf8b-e79ded9055b2@codeaurora.org>
In-Reply-To: <316a5cf9-ca71-6506-bf8b-e79ded9055b2@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 "vinmenon@codeaurora.org" <vinmenon@codeaurora.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dmabuf: use spinlock to access
	dmabuf->name
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

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj5Gcm9tOiBkcmktZGV2ZWwgPGRyaS1kZXZlbC1i
b3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mCj5DaGFyYW4gVGVqYSBL
YWxsYQo+U2VudDogVGh1cnNkYXksIEp1bmUgMTEsIDIwMjAgOTo0MCBBTQo+VG86IFN1bWl0IFNl
bXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+OyBvcGVuIGxpc3Q6RE1BIEJVRkZFUgo+U0hB
UklORyBGUkFNRVdPUksgPGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZz47IERSSSBtYWlsaW5n
IGxpc3QgPGRyaS0KPmRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4KPkNjOiBMaW5hcm8gTU0g
U0lHIDxsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmc+Owo+dmlubWVub25AY29kZWF1cm9y
YS5vcmc7IExLTUwgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+Owo+c3RhYmxlQHZnZXIu
a2VybmVsLm9yZwo+U3ViamVjdDogW1BBVENIXSBkbWFidWY6IHVzZSBzcGlubG9jayB0byBhY2Nl
c3MgZG1hYnVmLT5uYW1lCj4KPlRoZXJlIGV4aXN0cyBhIHNsZWVwLXdoaWxlLWF0b21pYyBidWcg
d2hpbGUgYWNjZXNzaW5nIHRoZSBkbWFidWYtPm5hbWUKPnVuZGVyIG11dGV4IGluIHRoZSBkbWFi
dWZmc19kbmFtZSgpLiBUaGlzIGlzIGNhdXNlZCBmcm9tIHRoZSBTRUxpbnV4Cj5wZXJtaXNzaW9u
cyBjaGVja3Mgb24gYSBwcm9jZXNzIHdoZXJlIGl0IHRyaWVzIHRvIHZhbGlkYXRlIHRoZSBpbmhl
cml0ZWQKPmZpbGVzIGZyb20gZm9yaygpIGJ5IHRyYXZlcnNpbmcgdGhlbSB0aHJvdWdoIGl0ZXJh
dGVfZmQoKSAod2hpY2gKPnRyYXZlcnNlIGZpbGVzIHVuZGVyIHNwaW5fbG9jaykgYW5kIGNhbGwK
Pm1hdGNoX2ZpbGUoc2VjdXJpdHkvc2VsaW51eC9ob29rcy5jKSB3aGVyZSB0aGUgcGVybWlzc2lv
biBjaGVja3MgaGFwcGVuLgo+VGhpcyBhdWRpdCBpbmZvcm1hdGlvbiBpcyBsb2dnZWQgdXNpbmcg
ZHVtcF9jb21tb25fYXVkaXRfZGF0YSgpIHdoZXJlIGl0Cj5jYWxscyBkX3BhdGgoKSB0byBnZXQg
dGhlIGZpbGUgcGF0aCBuYW1lLiBJZiB0aGUgZmlsZSBjaGVjayBoYXBwZW4gb24KPnRoZSBkbWFi
dWYncyBmZCwgdGhlbiBpdCBlbmRzIHVwIGluIC0+ZG1hYnVmZnNfZG5hbWUoKSBhbmQgdXNlIG11
dGV4IHRvCj5hY2Nlc3MgZG1hYnVmLT5uYW1lLiBUaGUgZmxvdyB3aWxsIGJlIGxpa2UgYmVsb3c6
Cj5mbHVzaF91bmF1dGhvcml6ZWRfZmlsZXMoKQo+ICBpdGVyYXRlX2ZkKCkKPiAgICBzcGluX2xv
Y2soKSAtLT4gU3RhcnQgb2YgdGhlIGF0b21pYyBzZWN0aW9uLgo+ICAgICAgbWF0Y2hfZmlsZSgp
Cj4gICAgICAgIGZpbGVfaGFzX3Blcm0oKQo+ICAgICAgICAgIGF2Y19oYXNfcGVybSgpCj4gICAg
ICAgICAgICBhdmNfYXVkaXQoKQo+ICAgICAgICAgICAgICBzbG93X2F2Y19hdWRpdCgpCj4JICAg
ICAgICBjb21tb25fbHNtX2F1ZGl0KCkKPgkJICBkdW1wX2NvbW1vbl9hdWRpdF9kYXRhKCkKPgkJ
ICAgIGF1ZGl0X2xvZ19kX3BhdGgoKQo+CQkgICAgICBkX3BhdGgoKQo+ICAgICAgICAgICAgICAg
ICAgICAgICAgZG1hYnVmZnNfZG5hbWUoKQo+ICAgICAgICAgICAgICAgICAgICAgICAgICBtdXRl
eF9sb2NrKCktLT4gU2xlZXAgd2hpbGUgYXRvbWljLgo+Cj5DYWxsIHRyYWNlIGNhcHR1cmVkIChv
biA0LjE5IGtlcm5lbHMpIGlzIGJlbG93Ogo+X19fbWlnaHRfc2xlZXArMHgyMDQvMHgyMDgKPl9f
bWlnaHRfc2xlZXArMHg1MC8weDg4Cj5fX211dGV4X2xvY2tfY29tbW9uKzB4NWMvMHgxMDY4Cj5f
X211dGV4X2xvY2tfY29tbW9uKzB4NWMvMHgxMDY4Cj5tdXRleF9sb2NrX25lc3RlZCsweDQwLzB4
NTAKPmRtYWJ1ZmZzX2RuYW1lKzB4YTAvMHgxNzAKPmRfcGF0aCsweDg0LzB4MjkwCj5hdWRpdF9s
b2dfZF9wYXRoKzB4NzQvMHgxMzAKPmNvbW1vbl9sc21fYXVkaXQrMHgzMzQvMHg2ZTgKPnNsb3df
YXZjX2F1ZGl0KzB4YjgvMHhmOAo+YXZjX2hhc19wZXJtKzB4MTU0LzB4MjE4Cj5maWxlX2hhc19w
ZXJtKzB4NzAvMHgxODAKPm1hdGNoX2ZpbGUrMHg2MC8weDc4Cj5pdGVyYXRlX2ZkKzB4MTI4LzB4
MTY4Cj5zZWxpbnV4X2Jwcm1fY29tbWl0dGluZ19jcmVkcysweDE3OC8weDI0OAo+c2VjdXJpdHlf
YnBybV9jb21taXR0aW5nX2NyZWRzKzB4MzAvMHg0OAo+aW5zdGFsbF9leGVjX2NyZWRzKzB4MWMv
MHg2OAo+bG9hZF9lbGZfYmluYXJ5KzB4M2E0LzB4MTRlMAo+c2VhcmNoX2JpbmFyeV9oYW5kbGVy
KzB4YjAvMHgxZTAKPgo+U28sIHVzZSBzcGlubG9jayB0byBhY2Nlc3MgZG1hYnVmLT5uYW1lIHRv
IGF2b2lkIHNsZWVwLXdoaWxlLWF0b21pYy4KPgo+Q2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3Jn
PiBbNS4zK10KPlNpZ25lZC1vZmYtYnk6IENoYXJhbiBUZWphIFJlZGR5IDxjaGFyYW50ZUBjb2Rl
YXVyb3JhLm9yZz4KPi0tLQo+IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAxMyArKysrKysr
LS0tLS0tCj4gaW5jbHVkZS9saW51eC9kbWEtYnVmLmggICB8ICAxICsKPiAyIGZpbGVzIGNoYW5n
ZWQsIDggaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPgo+ZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj5pbmRleCAw
MWNlMTI1Li4yZTA0NTZjIDEwMDY0NAo+LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+QEAgLTQ1LDEwICs0NSwxMCBAQCBzdGF0
aWMgY2hhciAqZG1hYnVmZnNfZG5hbWUoc3RydWN0IGRlbnRyeSAqZGVudHJ5LAo+Y2hhciAqYnVm
ZmVyLCBpbnQgYnVmbGVuKQo+IAlzaXplX3QgcmV0ID0gMDsKPgo+IAlkbWFidWYgPSBkZW50cnkt
PmRfZnNkYXRhOwo+LQlkbWFfcmVzdl9sb2NrKGRtYWJ1Zi0+cmVzdiwgTlVMTCk7Cj4rCXNwaW5f
bG9jaygmZG1hYnVmLT5uYW1lX2xvY2spOwo+IAlpZiAoZG1hYnVmLT5uYW1lKQo+IAkJcmV0ID0g
c3RybGNweShuYW1lLCBkbWFidWYtPm5hbWUsIERNQV9CVUZfTkFNRV9MRU4pOwo+LQlkbWFfcmVz
dl91bmxvY2soZG1hYnVmLT5yZXN2KTsKPisJc3Bpbl91bmxvY2soJmRtYWJ1Zi0+bmFtZV9sb2Nr
KTsKCkkgYW0gbm90IHJlYWxseSBjbGVhciBvbiB3aHkgeW91IG5lZWQgdGhpcyBsb2NrLgoKSWYg
bmFtZSA9PSBOVUxMIHlvdSBoYXZlIG5vIGlzc3Vlcy4KSWYgbmFtZSBpcyByZWFsLCB5b3UgaGF2
ZSBubyBpc3N1ZXMuCgpJZiBuYW1lIGlzIGZyZWVkIHlvdSB3aWxsIGNvcHkgZ2FyYmFnZSwgYnV0
IHRoZSBvbmx5IHdheQpmb3IgdGhhdCB0byBoYXBwZW4gaXMgdGhhdCBfc2V0X25hbWUgb3IgX3Jl
bGVhc2UgaGF2ZSB0byBiZSBjYWxsZWQKYXQganVzdCB0aGUgcmlnaHQgdGltZS4KCkFuZCB0aGUg
YWJvdmUgd291bGQgcHJvYmFibHkgb25seSBiZSBhbiBpc3N1ZSBpZiB0aGUgc2V0X25hbWUKd2Fz
IGNhbGxlZCwgc28geW91IHdpbGwgZ2V0IE5VTEwgb3IgYSByZWFsIG5hbWUuCgpJcyB0aGVyZSBh
IHJlYXNvbiBmb3IgdGhlIGxvY2sgaGVyZT8KCk1pa2UKCj4gCXJldHVybiBkeW5hbWljX2RuYW1l
KGRlbnRyeSwgYnVmZmVyLCBidWZsZW4sICIvJXM6JXMiLAo+IAkJCSAgICAgZGVudHJ5LT5kX25h
bWUubmFtZSwgcmV0ID4gMCA/IG5hbWUgOiAiIik7Cj5AQCAtMzM1LDcgKzMzNSw3IEBAIHN0YXRp
YyBsb25nIGRtYV9idWZfc2V0X25hbWUoc3RydWN0IGRtYV9idWYKPipkbWFidWYsIGNvbnN0IGNo
YXIgX191c2VyICpidWYpCj4gCWlmIChJU19FUlIobmFtZSkpCj4gCQlyZXR1cm4gUFRSX0VSUihu
YW1lKTsKPgo+LQlkbWFfcmVzdl9sb2NrKGRtYWJ1Zi0+cmVzdiwgTlVMTCk7Cj4rCXNwaW5fbG9j
aygmZG1hYnVmLT5uYW1lX2xvY2spOwo+IAlpZiAoIWxpc3RfZW1wdHkoJmRtYWJ1Zi0+YXR0YWNo
bWVudHMpKSB7Cj4gCQlyZXQgPSAtRUJVU1k7Cj4gCQlrZnJlZShuYW1lKTsKPkBAIC0zNDUsNyAr
MzQ1LDcgQEAgc3RhdGljIGxvbmcgZG1hX2J1Zl9zZXRfbmFtZShzdHJ1Y3QgZG1hX2J1Zgo+KmRt
YWJ1ZiwgY29uc3QgY2hhciBfX3VzZXIgKmJ1ZikKPiAJZG1hYnVmLT5uYW1lID0gbmFtZTsKPgo+
IG91dF91bmxvY2s6Cj4tCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOwo+KwlzcGluX3Vu
bG9jaygmZG1hYnVmLT5uYW1lX2xvY2spOwo+IAlyZXR1cm4gcmV0Owo+IH0KPgo+QEAgLTQwNSwx
MCArNDA1LDEwIEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfc2hvd19mZGluZm8oc3RydWN0IHNlcV9m
aWxlCj4qbSwgc3RydWN0IGZpbGUgKmZpbGUpCj4gCS8qIERvbid0IGNvdW50IHRoZSB0ZW1wb3Jh
cnkgcmVmZXJlbmNlIHRha2VuIGluc2lkZSBwcm9jZnMgc2VxX3Nob3cKPiovCj4gCXNlcV9wcmlu
dGYobSwgImNvdW50Olx0JWxkXG4iLCBmaWxlX2NvdW50KGRtYWJ1Zi0+ZmlsZSkgLSAxKTsKPiAJ
c2VxX3ByaW50ZihtLCAiZXhwX25hbWU6XHQlc1xuIiwgZG1hYnVmLT5leHBfbmFtZSk7Cj4tCWRt
YV9yZXN2X2xvY2soZG1hYnVmLT5yZXN2LCBOVUxMKTsKPisJc3Bpbl9sb2NrKCZkbWFidWYtPm5h
bWVfbG9jayk7Cj4gCWlmIChkbWFidWYtPm5hbWUpCj4gCQlzZXFfcHJpbnRmKG0sICJuYW1lOlx0
JXNcbiIsIGRtYWJ1Zi0+bmFtZSk7Cj4tCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOwo+
KwlzcGluX3VubG9jaygmZG1hYnVmLT5uYW1lX2xvY2spOwo+IH0KPgo+IHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZmlsZV9vcGVyYXRpb25zIGRtYV9idWZfZm9wcyA9IHsKPkBAIC01NDYsNiArNTQ2LDcg
QEAgc3RydWN0IGRtYV9idWYgKmRtYV9idWZfZXhwb3J0KGNvbnN0IHN0cnVjdAo+ZG1hX2J1Zl9l
eHBvcnRfaW5mbyAqZXhwX2luZm8pCj4gCWRtYWJ1Zi0+c2l6ZSA9IGV4cF9pbmZvLT5zaXplOwo+
IAlkbWFidWYtPmV4cF9uYW1lID0gZXhwX2luZm8tPmV4cF9uYW1lOwo+IAlkbWFidWYtPm93bmVy
ID0gZXhwX2luZm8tPm93bmVyOwo+KwlzcGluX2xvY2tfaW5pdCgmZG1hYnVmLT5uYW1lX2xvY2sp
Owo+IAlpbml0X3dhaXRxdWV1ZV9oZWFkKCZkbWFidWYtPnBvbGwpOwo+IAlkbWFidWYtPmNiX2V4
Y2wucG9sbCA9IGRtYWJ1Zi0+Y2Jfc2hhcmVkLnBvbGwgPSAmZG1hYnVmLT5wb2xsOwo+IAlkbWFi
dWYtPmNiX2V4Y2wuYWN0aXZlID0gZG1hYnVmLT5jYl9zaGFyZWQuYWN0aXZlID0gMDsKPmRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5o
Cj5pbmRleCBhYjBjMTU2Li45MzEwOGZkIDEwMDY0NAo+LS0tIGEvaW5jbHVkZS9saW51eC9kbWEt
YnVmLmgKPisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCj5AQCAtMzExLDYgKzMxMSw3IEBA
IHN0cnVjdCBkbWFfYnVmIHsKPiAJdm9pZCAqdm1hcF9wdHI7Cj4gCWNvbnN0IGNoYXIgKmV4cF9u
YW1lOwo+IAljb25zdCBjaGFyICpuYW1lOwo+KwlzcGlubG9ja190IG5hbWVfbG9jazsKPiAJc3Ry
dWN0IG1vZHVsZSAqb3duZXI7Cj4gCXN0cnVjdCBsaXN0X2hlYWQgbGlzdF9ub2RlOwo+IAl2b2lk
ICpwcml2Owo+LS0KPlRoZSBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5jLiBpcyBhIG1l
bWJlciBvZiB0aGUgQ29kZSBBdXJvcmEKPkZvcnVtLCBhIExpbnV4IEZvdW5kYXRpb24gQ29sbGFi
b3JhdGl2ZSBQcm9qZWN0Cj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
