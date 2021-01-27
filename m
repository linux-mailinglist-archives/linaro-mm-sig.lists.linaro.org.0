Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C591F3064F8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Jan 2021 21:22:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D11D56674C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Jan 2021 20:22:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BF6AF6675C; Wed, 27 Jan 2021 20:22:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B582B6675B;
	Wed, 27 Jan 2021 20:21:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D8FBE6674C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Jan 2021 20:21:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C180A6675B; Wed, 27 Jan 2021 20:21:50 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by lists.linaro.org (Postfix) with ESMTPS id 9A8966674C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Jan 2021 20:21:49 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id 31so1663525plb.10
 for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Jan 2021 12:21:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=+hzofQqaeoGNYCe45SBnaGoQ2vMeZ0xTF87uPiMOHFo=;
 b=f7Z8yzldmEH/B/PQ5EhznvW40iC5SHhpAK92+USOxwZ/72yHdOVbCZmD63n9a2LR5y
 /XDG6gxwNLuz6Zf/epvvt1PiEArH8PcKaRL1Ng8vLhzB5GwyFYsCW9e1AS45O7Hv09c6
 2Gk4HtTKYyaNJlzHXnUTSVJdMwRXR2DSOdOQ7cSeo+fJDqxmU2zQTKB4490Lz33l4bCh
 +qK1ITPzVOyyyKUlFWz5Y2bAW3ggMyAXA6uGJRjlgsb2f04aVyB6049R0cVIjB8g+v6d
 FQ1ICgmVTAqMatdvACrv7kgg9VylrEsM1M1WEidS34P1mQHymc47JXt5JKFFMX69kiT+
 Sbcw==
X-Gm-Message-State: AOAM533ulj3hwzoxAd5dLyLIksZGZ/o0emnunPmCocSEG19veBIvf0ir
 ooEowXjc6wQE8vOc+KJ0Sa4=
X-Google-Smtp-Source: ABdhPJy2tnLBcvXAqOMHFbdOndQtX/tERTcINJmus1YbktB7wIePSj3Rx/TdqMimPIXysMbx4hTg3w==
X-Received: by 2002:a17:902:a412:b029:db:cf5a:8427 with SMTP id
 p18-20020a170902a412b02900dbcf5a8427mr12888916plq.48.1611778908549; 
 Wed, 27 Jan 2021 12:21:48 -0800 (PST)
Received: from google.com ([2620:15c:211:201:9dd5:b47b:bb84:dede])
 by smtp.gmail.com with ESMTPSA id e17sm2863806pjh.39.2021.01.27.12.21.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 12:21:47 -0800 (PST)
Date: Wed, 27 Jan 2021 12:21:45 -0800
From: Minchan Kim <minchan@kernel.org>
To: Michal Hocko <mhocko@suse.com>
Message-ID: <YBHLWUvLlLzSnPI5@google.com>
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-2-minchan@kernel.org>
 <20210125130701.GF827@dhcp22.suse.cz> <YA8fKgFLuOi/rSez@google.com>
 <20210126073808.GZ827@dhcp22.suse.cz> <YBBpjvBRtvi3Rl9F@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBBpjvBRtvi3Rl9F@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, linux-media@vger.kernel.org, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v4 1/4] mm: cma: introduce gfp flag in
 cma_alloc instead of no_warn
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

T24gVHVlLCBKYW4gMjYsIDIwMjEgYXQgMTE6MTI6MTRBTSAtMDgwMCwgTWluY2hhbiBLaW0gd3Jv
dGU6Cj4gT24gVHVlLCBKYW4gMjYsIDIwMjEgYXQgMDg6Mzg6MDhBTSArMDEwMCwgTWljaGFsIEhv
Y2tvIHdyb3RlOgo+ID4gT24gTW9uIDI1LTAxLTIxIDExOjQyOjM0LCBNaW5jaGFuIEtpbSB3cm90
ZToKPiA+ID4gT24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMDI6MDc6MDFQTSArMDEwMCwgTWljaGFs
IEhvY2tvIHdyb3RlOgo+ID4gPiA+IE9uIFRodSAyMS0wMS0yMSAwOTo1NDo1OSwgTWluY2hhbiBL
aW0gd3JvdGU6Cj4gPiA+ID4gPiBUaGUgdXBjb21pbmcgcGF0Y2ggd2lsbCBpbnRyb2R1Y2UgX19H
RlBfTk9SRVRSWSBzZW1hbnRpYwo+ID4gPiA+ID4gaW4gYWxsb2NfY29udGlnX3JhbmdlIHdoaWNo
IGlzIGEgZmFpbGZhc3QgbW9kZSBvZiB0aGUgQVBJLgo+ID4gPiA+ID4gSW5zdGVhZCBvZiBhZGRp
bmcgYSBhZGRpdGlvbmFsIHBhcmFtZXRlciBmb3IgZ2ZwLCByZXBsYWNlCj4gPiA+ID4gPiBub193
YXJuIHdpdGggZ2ZwIGZsYWcuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRvIGtlZXAgb2xkIGJlaGF2
aW9ycywgaXQgZm9sbG93cyB0aGUgcnVsZSBiZWxvdy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gICBu
b193YXJuIAkJCWdmcF9mbGFncwo+ID4gPiA+ID4gCj4gPiA+ID4gPiAgIGZhbHNlICAgICAgICAg
CQlHRlBfS0VSTkVMCj4gPiA+ID4gPiAgIHRydWUgICAgICAgICAgCQlHRlBfS0VSTkVMfF9fR0ZQ
X05PV0FSTgo+ID4gPiA+ID4gICBnZnAgJiBfX0dGUF9OT1dBUk4JCUdGUF9LRVJORUwgfCAoZ2Zw
ICYgX19HRlBfTk9XQVJOKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBSZXZpZXdlZC1ieTogU3VyZW4g
QmFnaGRhc2FyeWFuIDxzdXJlbmJAZ29vZ2xlLmNvbT4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+Cj4gPiA+ID4gWy4uLl0KPiA+ID4gPiA+
IGRpZmYgLS1naXQgYS9tbS9jbWEuYyBiL21tL2NtYS5jCj4gPiA+ID4gPiBpbmRleCAwYmE2OWNk
MTZhZWIuLmQ1MDYyNzY4NmZlYyAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL21tL2NtYS5jCj4gPiA+
ID4gPiArKysgYi9tbS9jbWEuYwo+ID4gPiA+ID4gQEAgLTQxOSwxMyArNDE5LDEzIEBAIHN0YXRp
YyBpbmxpbmUgdm9pZCBjbWFfZGVidWdfc2hvd19hcmVhcyhzdHJ1Y3QgY21hICpjbWEpIHsgfQo+
ID4gPiA+ID4gICAqIEBjbWE6ICAgQ29udGlndW91cyBtZW1vcnkgcmVnaW9uIGZvciB3aGljaCB0
aGUgYWxsb2NhdGlvbiBpcyBwZXJmb3JtZWQuCj4gPiA+ID4gPiAgICogQGNvdW50OiBSZXF1ZXN0
ZWQgbnVtYmVyIG9mIHBhZ2VzLgo+ID4gPiA+ID4gICAqIEBhbGlnbjogUmVxdWVzdGVkIGFsaWdu
bWVudCBvZiBwYWdlcyAoaW4gUEFHRV9TSVpFIG9yZGVyKS4KPiA+ID4gPiA+IC0gKiBAbm9fd2Fy
bjogQXZvaWQgcHJpbnRpbmcgbWVzc2FnZSBhYm91dCBmYWlsZWQgYWxsb2NhdGlvbgo+ID4gPiA+
ID4gKyAqIEBnZnBfbWFzazogR0ZQIG1hc2sgdG8gdXNlIGR1cmluZyB0aGUgY21hIGFsbG9jYXRp
b24uCj4gPiA+ID4gCj4gPiA+ID4gQ2FsbCBvdXQgc3VwcG9ydGVkIGdmcCBmbGFncyBleHBsaWNp
dGx5LiBIYXZlIGEgbG9vayBhdCBrdm1hbGxvY19ub2RlCj4gPiA+ID4gZm9yIGEgZ3VpZGFuY2Uu
Cj4gPiA+IAo+ID4gPiBIb3cgYWJvdXQgdGhpcz8KPiA+ID4gCj4gPiA+IAo+ID4gPiBkaWZmIC0t
Z2l0IGEvbW0vY21hLmMgYi9tbS9jbWEuYwo+ID4gPiBpbmRleCBkNTA2Mjc2ODZmZWMuLmI5NDcy
N2I2OTRkNiAxMDA2NDQKPiA+ID4gLS0tIGEvbW0vY21hLmMKPiA+ID4gKysrIGIvbW0vY21hLmMK
PiA+ID4gQEAgLTQyMyw2ICs0MjMsMTAgQEAgc3RhdGljIGlubGluZSB2b2lkIGNtYV9kZWJ1Z19z
aG93X2FyZWFzKHN0cnVjdCBjbWEgKmNtYSkgeyB9Cj4gPiA+ICAgKgo+ID4gPiAgICogVGhpcyBm
dW5jdGlvbiBhbGxvY2F0ZXMgcGFydCBvZiBjb250aWd1b3VzIG1lbW9yeSBvbiBzcGVjaWZpYwo+
ID4gPiAgICogY29udGlndW91cyBtZW1vcnkgYXJlYS4KPiA+ID4gKyAqCj4gPiA+ICsgKiBGb3Ig
Z2ZwX21hc2ssIEdGUF9LRVJORUwgYW5kIF9fR0ZQX05PUkVUUlkgYXJlIHN1cHBvcnRlZC4gX19H
RlBfTk9SRVRSWQo+ID4gPiArICogd2lsbCBhdm9pZCBjb3N0bHkgZnVuY3Rpb25zKGUuZy4sIHdh
aXRpbmcgb24gcGFnZV93cml0ZWJhY2sgYW5kIGxvY2tpbmcpCj4gPiA+ICsgKiBhdCBjdXJyZW50
IGltcGxlbWVudGFpb24gZHVyaW5nIHRoZSBwYWdlIG1pZ3JhdGlvbi4KPiA+IAo+ID4gcmF0aGVy
IHRoYW4gZXhwbGljaXRseSBtZW50aW9uaW5nIHdoYXQgdGhlIGZsYWcgaW1wbGllcyBJIHRoaW5r
IGl0IHdvdWxkCj4gPiBiZSBtb3JlIHVzZWZ1bCB0byBzdGF0ZSB0aGUgaW50ZW5kZWQgdXNlY2Fz
ZS4gU2VlIGhvdyBrdm1hbGxvY19ub2RlIHNheXMKPiA+ICJfX0dGUF9SRVRSWV9NQVlGQUlMIGlz
IHN1cHBvcnRlZCwgYW5kIGl0IHNob3VsZCBiZSB1c2VkIG9ubHkgaWYga21hbGxvYyBpcwo+ID4g
cHJlZmVyYWJsZSB0byB0aGUgdm1hbGxvYyBmYWxsYmFjaywgZHVlIHRvIHZpc2libGUgcGVyZm9y
bWFuY2UKPiA+IGRyYXdiYWNrcy4KPiA+IF9fR0ZQX05PV0FSTiBpcyBhbHNvIHN1cHBvcnRlZCB0
byBzdXBwcmVzcyBhbGxvY2F0aW9uIGZhaWx1cmUgbWVzc2FnZXMuIgo+ID4gCj4gPiBUaGlzIHdv
dWxkIGhlbHAgcGVvcGxlIG5vdCBmYW1pbGlhciB3aXRoIGludGVybmFscyB0byBzZWUgd2hldGhl
ciB0aGlzCj4gPiBmbGFnIGlzIGEgZ29vZCBmaXQgZm9yIHRoZW0uCj4gPiAKPiA+IEluIHRoaXMg
Y2FzZSBJIHdvdWwgZ28gd2l0aAo+ID4gIgo+ID4gQGZsYWdzOiBnZnAgbWFzay4gTXVzdCBiZSBj
b21wYXRpYmxlIChzdXBlcnNldCkgd2l0aCBHRlBfS0VSTkVMLgo+ID4gWy4uLl0KPiA+IFJlY2xh
aW0gbW9kaWZpZXJzIChfX0dGUF9SRVRSWV9NQVlGQUlMLCBfX0dGUF9OT0ZBSUwpIGFyZSBub3Qg
c3VwcG9ydGVkLgo+ID4gX19HRlBfTk9SRVRSWSBpcyBzdXBwb3J0ZWQsIGFuZCBpdCBzaG91bGQg
YmUgdXNlZCBmb3Igb3Bwb3J0dW5pc3RpYwo+ID4gYWxsb2NhdGlvbiBhdHRlbXB0cyB0aGF0IHNo
b3VsZCByYXRoZXIgZmFpbCBxdWlja2x5IHdoZW4gdGhlIGNhbGxlciBoYXMKPiA+IGEgZmFsbGJh
Y2sgc3RyYXRlZ3kuCj4gPiAiCj4gPiAKPiA+IE9idmlvdXNseSBmb3IgdGhpcyBwYXRjaCB5b3Ug
d2lsbCBnbyB3aXRoIGEgc2ltcGxlIHN0YXRlbWVudCB0aGF0Cj4gPiBSZWNsYWltIG1vZGlmaWVy
cyBhcmUgbm90IHN1cHBvcnRlZCBhdCBhbGwuCj4gCj4gQWZ0ZXIgbW9yZSBkaXNjdXNzaW9uIGZv
ciBnZnBfZmxhZ3MgaW4gdGhyZWFkIG9mIG5leHQgcGF0Y2gsIGxldCBtZQo+IGNoYW5nZXMgYSBi
aXQgbW9yZSBiYXNlZCBvbiBpdC4KPiAKPiBUaGFua3MgZm9yIHRoZSBzdWdnZXN0aW9uLCBNaWNo
YWwuCgpCYXNlZCBvbiB0aGUgZGlzY3Vzc2lvbiBpbiBvdGhlciB0aHJlYWQsIEkgd2FudCB0byBn
byB3aXRoIF9fR0ZQX05PUkVUUlkKdG8gaW5kaWNhdGUgIm9wcG9ydHVuaXN0aWMtZWFzeS10by1m
YWlsIGF0dGVtcHQiIHNvIHN1Z2dlc3Rpb24gd29yZHMKTWljaGFsIGlzIHZhbGlkIHNvIEkgd2ls
bCBjYXJyeSBpdCBvbiBuZXh0IHZlcnNpb24uCgpUaGFuayB5b3UuCgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
