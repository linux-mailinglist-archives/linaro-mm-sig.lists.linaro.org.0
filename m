Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AC65C30C997
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Feb 2021 19:25:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C60936175A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Feb 2021 18:25:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B448661786; Tue,  2 Feb 2021 18:25:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,RDNS_NONE,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B083F619D7;
	Tue,  2 Feb 2021 18:25:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 43CCD6175A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Feb 2021 18:25:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 35371619D7; Tue,  2 Feb 2021 18:25:03 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (unknown [63.128.21.124])
 by lists.linaro.org (Postfix) with ESMTPS id 61F8E6175A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Feb 2021 18:25:01 +0000 (UTC)
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-112-SkCTQsdQOwCVSjyFq_Yzqg-1; Tue, 02 Feb 2021 13:24:57 -0500
X-MC-Unique: SkCTQsdQOwCVSjyFq_Yzqg-1
Received: by mail-qv1-f70.google.com with SMTP id k18so2548743qvj.15
 for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Feb 2021 10:24:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=AnGr4EooSXaQZ5ZRROa4NLkKWgLW6n+u1Od1EbAD4Lg=;
 b=My0ZuEdMOTVjJBtXLeCcAh5RQNJ8Fa+3ETSO30yTGYxZGyWBwAkFDim0hzZuG7wiAL
 QsXv7HvnyjYVXCaU/gFvj8e8xL1+17BPuzLJKUV0I0NymkJMlYHpX+qiQMYpoeVZdK8X
 cKqdyv2YZ3mc1ol9HP8kUrwcD6v27hcIXeoZ0cb1s0a90bBoVFa2W5dyYrdJBHQvW4C1
 hgXG11nAvpekRkHDLSR5e2NiFQMiFJwxiizobQ4O9AMd2jQP+9Q/GsRY9QUsIIY3zII5
 RTeTJ92kgiA7fV7bQNCSvPI43ToCMWa6YAsIyGwvX+15HN6m4v6fNxsNPIR3HxsHt5YU
 /pYg==
X-Gm-Message-State: AOAM532yRN1x8szfZ2QB7ccdlgQd2qkBHr1WoXDVftAgZTzlCmPNjs6r
 OEr9R7zsPUXQsnGDO2Icf6bwpClRteHScK+Yzt0oglIpKnQB3CmXh9VszPlkPN0LWTGIlEfcVhw
 uMVzrziuFuJIyg8oS6AWD7qorxMg=
X-Received: by 2002:a05:6214:324:: with SMTP id
 j4mr21390764qvu.53.1612290297359; 
 Tue, 02 Feb 2021 10:24:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw5CH5N3KAln06tkbRsEidyvbDgmef52F3iN9tUMNV+94ggr3F3Qn9K6XQ4RRxyy8rmKeIvmA==
X-Received: by 2002:a05:6214:324:: with SMTP id
 j4mr21390743qvu.53.1612290297144; 
 Tue, 02 Feb 2021 10:24:57 -0800 (PST)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id j125sm17584722qke.56.2021.02.02.10.24.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Feb 2021 10:24:56 -0800 (PST)
Message-ID: <a06e4ebe71f6809a772efc43592739e46b022b0e.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: christian.koenig@amd.com, Joe Perches <joe@perches.com>, Jiri Kosina
 <trivial@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 02 Feb 2021 13:24:55 -0500
In-Reply-To: <ad79432b-9c83-ce5a-f8ca-ec45bb55fb2c@gmail.com>
References: <cover.1598331148.git.joe@perches.com>
 <990bf6f33ccaf73ad56eb4bea8bd2c0db5e90a31.1598331148.git.joe@perches.com>
 <a87b95d11c22d997ebc423bba71cabef15ca0bac.camel@perches.com>
 <4d5891b7-ea87-974e-d260-f78c3af326bc@amd.com>
 <4266568da0437ea605bfb2810ead2b05475bfbb8.camel@redhat.com>
 <ad79432b-9c83-ce5a-f8ca-ec45bb55fb2c@gmail.com>
Organization: Red Hat
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 08/29] dma-buf: Avoid comma separated
 statements
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: lyude@redhat.com
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

T24gVHVlLCAyMDIxLTAyLTAyIGF0IDA5OjMzICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Ogo+IFllYWgsIGtub3duIGlzc3VlLgo+IAo+IEFuIE5UUCBzZXJ2ZXIgd2hpY2ggSSBkb24ndCBo
YXZlIGFjY2VzcyB0byBoYXMgZ29uZSBiYW5hbmFzIGFuZCAKPiBzb21ldGltZXMgc3BpdHMgb3V0
IGludmFsaWQgdGltZSBzdGFtcHMuCj4gCj4gT25seSB0aGluZyBJIGNhbiBkbyBpcyB3YWl0IGZv
ciBhbiBhZG1pbiB0byB0YWtlIGNhcmUgb2YgdGhpcy4KCmhhaGEgaXQncyBvayEgSSBqdXN0IHRo
b3VnaHQgaXQgd2FzIG1pbGRseSBlbnRlcnRhaW5pbmcgdG8gc2VlLCBhcyBteSBlbWFpbApjbGll
bnQgZm9ybWF0dGVkIHRoZSBtZXNzYWdlIHRpbWVzdGFtcCAiTmV4dCBXZWRuZXNkYXkiIDopCgo+
IAo+IENocmlzdGlhbi4KPiAKPiBBbSAwMS4wMi4yMSB1bSAyMjo1NCBzY2hyaWViIEx5dWRlIFBh
dWw6Cj4gPiBUaGlzIGlzIGVudGlyZWx5IHVucmVsYXRlZCB0byB0aGlzIHRocmVhZCwgYnV0IEkg
bm90aWNlZCB3aGVuIGdvaW5nIHRocm91Z2gKPiA+IGRyaS0KPiA+IGRldmVsIHRoYXQgdGhpcyBl
bWFpbCBpcyBzb21laG93IGRhdGVkIHR3byBkYXlzIGluIHRoZSBmdXR1cmUgZnJvbSBub3cuCj4g
PiAKPiA+IE9uIFdlZCwgMjAyMS0wMi0wMyBhdCAxNDoyNiArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiA+ID4gQW0gMzAuMDEuMjEgdW0gMTk6NDcgc2NocmllYiBKb2UgUGVyY2hlczoK
PiA+ID4gPiBPbiBNb24sIDIwMjAtMDgtMjQgYXQgMjE6NTYgLTA3MDAsIEpvZSBQZXJjaGVzIHdy
b3RlOgo+ID4gPiA+ID4gVXNlIHNlbWljb2xvbnMgYW5kIGJyYWNlcy4KPiA+ID4gPiBQaW5nPwo+
ID4gPiA+IMKgwqAgCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb2UgUGVyY2hlcyA8am9lQHBl
cmNoZXMuY29tPgo+ID4gPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPgo+ID4gPiAKPiA+ID4gRG8geW91IGhhdmUgY29tbWl0IHJpZ2h0cyB0
byBkcm0tbWlzYy1uZXh0Pwo+ID4gPiAKPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gwqDCoMKgZHJp
dmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jIHwgNyArKysrKy0tCj4gPiA+ID4gPiDCoMKgwqAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jIGIv
ZHJpdmVycy9kbWEtYnVmL3N0LWRtYS0KPiA+ID4gPiA+IGZlbmNlLmMKPiA+ID4gPiA+IGluZGV4
IGU1OTMwNjQzNDFjOC4uYzhhMTJkN2FkNzFhIDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYv
c3QtZG1hLWZlbmNlLmMKPiA+ID4gPiA+IEBAIC00NzEsOCArNDcxLDExIEBAIHN0YXRpYyBpbnQg
dGhyZWFkX3NpZ25hbF9jYWxsYmFjayh2b2lkICphcmcpCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYV9mZW5jZV9zaWduYWwoZjEp
Owo+ID4gPiA+ID4gwqDCoCAKPiA+ID4gPiA+IAo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHNtcF9zdG9yZV9tYihjYi5zZWVuLCBmYWxzZSk7Cj4gPiA+ID4gPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFmMiB8fCBkbWFfZmVuY2VfYWRkX2Nh
bGxiYWNrKGYyLCAmY2IuY2IsCj4gPiA+ID4gPiBzaW1wbGVfY2FsbGJhY2spKQo+ID4gPiA+ID4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtaXNzKyssIGNi
LnNlZW4gPSB0cnVlOwo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlm
ICghZjIgfHwKPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayhmMiwgJmNiLmNiLAo+ID4gPiA+ID4gc2ltcGxlX2NhbGxi
YWNrKSkgewo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBtaXNzKys7Cj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGNiLnNlZW4gPSB0cnVlOwo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoH0KPiA+ID4gPiA+IMKgwqAgCj4gPiA+ID4gPiAKPiA+ID4gPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIXQtPmJlZm9yZSkKPiA+ID4gPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1hX2Zl
bmNlX3NpZ25hbChmMSk7Cj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gPiA+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+ID4gZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo+IAoKLS0gClNpbmNlcmVseSwKICAgTHl1ZGUg
UGF1bCAoc2hlL2hlcikKICAgU29mdHdhcmUgRW5naW5lZXIgYXQgUmVkIEhhdAogICAKTm90ZTog
SSBkZWFsIHdpdGggYSBsb3Qgb2YgZW1haWxzIGFuZCBoYXZlIGEgbG90IG9mIGJ1Z3Mgb24gbXkg
cGxhdGUuIElmIHlvdSd2ZQphc2tlZCBtZSBhIHF1ZXN0aW9uLCBhcmUgd2FpdGluZyBmb3IgYSBy
ZXZpZXcvbWVyZ2Ugb24gYSBwYXRjaCwgZXRjLiBhbmQgSQpoYXZlbid0IHJlc3BvbmRlZCBpbiBh
IHdoaWxlLCBwbGVhc2UgZmVlbCBmcmVlIHRvIHNlbmQgbWUgYW5vdGhlciBlbWFpbCB0byBjaGVj
awpvbiBteSBzdGF0dXMuIEkgZG9uJ3QgYml0ZSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
