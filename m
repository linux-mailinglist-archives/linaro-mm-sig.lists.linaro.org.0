Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3FA2F68AF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Jan 2021 19:04:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF90A60C3D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Jan 2021 18:04:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B2D3060F4F; Thu, 14 Jan 2021 18:04:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E89B760C4B;
	Thu, 14 Jan 2021 18:04:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 39D17607B9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Jan 2021 18:04:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1B96D60C4B; Thu, 14 Jan 2021 18:04:13 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
 [209.85.215.169])
 by lists.linaro.org (Postfix) with ESMTPS id CD4A5607B9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Jan 2021 18:04:11 +0000 (UTC)
Received: by mail-pg1-f169.google.com with SMTP id g15so4281335pgu.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Jan 2021 10:04:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=8odJ5Ie7ToqG86xlcAIvMtTg4Qjk76VUQrxBhxSFP9w=;
 b=A+rtwYXjLVcNfu/hDSg+iGgrNb0RrikcXA09BMJZeF84EHLw+hfRCc/RVwxrfDsnXi
 9JOXsi78xFubJdkcKKe/nwDBxs7Whvu/19Ls95sPb66mpJ2Aj2dbmvewsMa/bWOQX0+u
 ou0IlPWlIO3ykU+M31BwehAFDKnlAgsCixrYr/ZKgFw64VcQ5qrfl7qaxJPJw+I2iC/h
 bRmEemWn/AkAVS8c4+N70d1gsWLaqXQYlglzvUljhhXKoEsfNIGIFDwXk+iSx4P4ZttL
 z75r3/2zZ4MjQcbJiCp4Ir+V+rUKgXzdUa0p4xrbbBpw/5sYUmrKkPnX10uBWc21UUdf
 o7eA==
X-Gm-Message-State: AOAM531yYA+FyaWX4mrWQV6iOCKbl+AxL/W4ee7hyi0hf1bDoYsarM/o
 bXNNWNTF4UEkQpkQUF4bDKE=
X-Google-Smtp-Source: ABdhPJwoNeFU6lwLeDKNvAWYiFtl2UOGPDfDpM4zGt/q0XPR8pdVQPV+E8PEIiPTuGm7rCuI3/aJQA==
X-Received: by 2002:a63:4f64:: with SMTP id p36mr8531861pgl.374.1610647451015; 
 Thu, 14 Jan 2021 10:04:11 -0800 (PST)
Received: from google.com ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id n15sm6074557pgl.31.2021.01.14.10.04.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Jan 2021 10:04:09 -0800 (PST)
Date: Thu, 14 Jan 2021 10:04:07 -0800
From: Minchan Kim <minchan@kernel.org>
To: David Hildenbrand <david@redhat.com>, mhocko@suse.com
Message-ID: <YACHlznVFEDvLila@google.com>
References: <20210113012143.1201105-1-minchan@kernel.org>
 <20210113012143.1201105-3-minchan@kernel.org>
 <723e935f-3aa4-2c55-8d69-fcaf71f4eb4c@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <723e935f-3aa4-2c55-8d69-fcaf71f4eb4c@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, hyesoo.yu@samsung.com,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v3 2/4] mm: failfast mode with
 __GFP_NORETRY in alloc_contig_range
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

T24gV2VkLCBKYW4gMTMsIDIwMjEgYXQgMDk6Mzk6MjZBTSArMDEwMCwgRGF2aWQgSGlsZGVuYnJh
bmQgd3JvdGU6Cj4gT24gMTMuMDEuMjEgMDI6MjEsIE1pbmNoYW4gS2ltIHdyb3RlOgo+ID4gQ29u
dGlndW91cyBtZW1vcnkgYWxsb2NhdGlvbiBjYW4gYmUgc3RhbGxlZCBkdWUgdG8gd2FpdGluZwo+
ID4gb24gcGFnZSB3cml0ZWJhY2sgYW5kL29yIHBhZ2UgbG9jayB3aGljaCBjYXVzZXMgdW5wcmVk
aWN0YWJsZQo+ID4gZGVsYXkuIEl0J3MgYSB1bmF2b2lkYWJsZSBjb3N0IGZvciB0aGUgcmVxdWVz
dG9yIHRvIGdldCAqYmlnKgo+ID4gY29udGlndW91cyBtZW1vcnkgYnV0IGl0J3MgZXhwZW5zaXZl
IGZvciAqc21hbGwqIGNvbnRpZ3VvdXMKPiA+IG1lbW9yeShlLmcuLCBvcmRlci00KSBiZWNhdXNl
IGNhbGxlciBjb3VsZCByZXRyeSB0aGUgcmVxdWVzdAo+ID4gaW4gZGlmZnJlbnQgcmFuZ2Ugd2hl
cmUgd291bGQgaGF2ZSBlYXN5IG1pZ3JhdGFibGUgcGFnZXMKPiA+IHdpdGhvdXQgc3RhbGxpbmcu
Cj4gCj4gcy9kaWZmcmVudC9kaWZmZXJlbnQvCj4gCj4gPiAKPiA+IFRoaXMgcGF0Y2ggaW50cm9k
dWNlIF9fR0ZQX05PUkVUUlkgYXMgY29tcGFjdGlvbiBnZnBfbWFzayBpbgo+ID4gYWxsb2NfY29u
dGlnX3JhbmdlIHNvIGl0IHdpbGwgZmFpbCBmYXN0IHdpdGhvdXQgYmxvY2tpbmcKPiA+IHdoZW4g
aXQgZW5jb3VudGVycyBwYWdlcyBuZWVkZWQgd2FpdHRpbmcuCj4gCj4gcy93YWl0dGluZy93YWl0
aW5nLwoKRnhlZCBib3RoLiBUaGFua3MuCkxldCBtZSByZXNlbmQgb25jZSBJIGdldCBzb21lIHJl
dmlldy4KCk1pY2hhbCwgSSBhcHByZWNpYXRlIGlmIHlvdSBjb3VsZCBnaXZlIGFuIHJldmlldyBi
ZWZvcmUKbmV4dCByZXZpc2lvbi4KClRoYW5rcyEKCj4gCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6
IE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+Cj4gPiAtLS0KPiA+ICBtbS9wYWdlX2Fs
bG9jLmMgfCA4ICsrKysrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL21tL3BhZ2VfYWxsb2MuYyBiL21t
L3BhZ2VfYWxsb2MuYwo+ID4gaW5kZXggNWIzOTIzZGI5MTU4Li5mZjQxY2ViNGRiNTEgMTAwNjQ0
Cj4gPiAtLS0gYS9tbS9wYWdlX2FsbG9jLmMKPiA+ICsrKyBiL21tL3BhZ2VfYWxsb2MuYwo+ID4g
QEAgLTg0ODksMTIgKzg0ODksMTYgQEAgc3RhdGljIGludCBfX2FsbG9jX2NvbnRpZ19taWdyYXRl
X3JhbmdlKHN0cnVjdCBjb21wYWN0X2NvbnRyb2wgKmNjLAo+ID4gIAl1bnNpZ25lZCBpbnQgbnJf
cmVjbGFpbWVkOwo+ID4gIAl1bnNpZ25lZCBsb25nIHBmbiA9IHN0YXJ0Owo+ID4gIAl1bnNpZ25l
ZCBpbnQgdHJpZXMgPSAwOwo+ID4gKwl1bnNpZ25lZCBpbnQgbWF4X3RyaWVzID0gNTsKPiA+ICAJ
aW50IHJldCA9IDA7Cj4gPiAgCXN0cnVjdCBtaWdyYXRpb25fdGFyZ2V0X2NvbnRyb2wgbXRjID0g
ewo+ID4gIAkJLm5pZCA9IHpvbmVfdG9fbmlkKGNjLT56b25lKSwKPiA+ICAJCS5nZnBfbWFzayA9
IEdGUF9VU0VSIHwgX19HRlBfTU9WQUJMRSB8IF9fR0ZQX1JFVFJZX01BWUZBSUwsCj4gPiAgCX07
Cj4gPiAgCj4gPiArCWlmIChjYy0+YWxsb2NfY29udGlnICYmIGNjLT5tb2RlID09IE1JR1JBVEVf
QVNZTkMpCj4gPiArCQltYXhfdHJpZXMgPSAxOwo+ID4gKwo+ID4gIAltaWdyYXRlX3ByZXAoKTsK
PiA+ICAKPiA+ICAJd2hpbGUgKHBmbiA8IGVuZCB8fCAhbGlzdF9lbXB0eSgmY2MtPm1pZ3JhdGVw
YWdlcykpIHsKPiA+IEBAIC04NTExLDcgKzg1MTUsNyBAQCBzdGF0aWMgaW50IF9fYWxsb2NfY29u
dGlnX21pZ3JhdGVfcmFuZ2Uoc3RydWN0IGNvbXBhY3RfY29udHJvbCAqY2MsCj4gPiAgCQkJCWJy
ZWFrOwo+ID4gIAkJCX0KPiA+ICAJCQl0cmllcyA9IDA7Cj4gPiAtCQl9IGVsc2UgaWYgKCsrdHJp
ZXMgPT0gNSkgewo+ID4gKwkJfSBlbHNlIGlmICgrK3RyaWVzID09IG1heF90cmllcykgewo+ID4g
IAkJCXJldCA9IHJldCA8IDAgPyByZXQgOiAtRUJVU1k7Cj4gPiAgCQkJYnJlYWs7Cj4gPiAgCQl9
Cj4gPiBAQCAtODU2Miw3ICs4NTY2LDcgQEAgaW50IGFsbG9jX2NvbnRpZ19yYW5nZSh1bnNpZ25l
ZCBsb25nIHN0YXJ0LCB1bnNpZ25lZCBsb25nIGVuZCwKPiA+ICAJCS5ucl9taWdyYXRlcGFnZXMg
PSAwLAo+ID4gIAkJLm9yZGVyID0gLTEsCj4gPiAgCQkuem9uZSA9IHBhZ2Vfem9uZShwZm5fdG9f
cGFnZShzdGFydCkpLAo+ID4gLQkJLm1vZGUgPSBNSUdSQVRFX1NZTkMsCj4gPiArCQkubW9kZSA9
IGdmcF9tYXNrICYgX19HRlBfTk9SRVRSWSA/IE1JR1JBVEVfQVNZTkMgOiBNSUdSQVRFX1NZTkMs
Cj4gPiAgCQkuaWdub3JlX3NraXBfaGludCA9IHRydWUsCj4gPiAgCQkubm9fc2V0X3NraXBfaGlu
dCA9IHRydWUsCj4gPiAgCQkuZ2ZwX21hc2sgPSBjdXJyZW50X2dmcF9jb250ZXh0KGdmcF9tYXNr
KSwKPiA+IAo+IAo+IEknbSBmaW5lIHdpdGggdXNpbmcgZ2ZwIGZsYWdzIChlLmcuLCBfX0dGUF9O
T1JFVFJZKSBhcyBsb25nIGFzIHRoZXkKPiBkb24ndCBlbmFibGUgb3RoZXIgaW1wbGljaXQgYmVo
YXZpb3IgKGUuZy4sIG1vdmUgZHJhaW5pbmcgWCB0byB0aGUKPiBjYWxsZXIpIHRoYXQncyBoYXJk
IHRvIGdldCBmcm9tIHRoZSBmbGFnIG5hbWUuCj4gCj4gSU1ITywgaWYgd2UgZXZlciB3YW50IHRv
IG1vdmUgZHJhaW5pbmcgdG8gdGhlIGNhbGxlciwgb3IgY2hhbmdlIHRoZQo+IGJlaGF2aW9yIG9m
IGFsbG9jX2NvbnRpZ19yYW5nZSgpIGluIGRpZmZlcmVudCB3YXlzIChlLmcuLCBkaXNhYmxlIFBD
UCksCj4gd2Ugd29uJ3QgZ2V0IGFyb3VuZCBpbnRyb2R1Y2luZyBhIHNlcGFyYXRlIHNldCBvZiBm
bGFncyBmb3IKPiBhbGxvY19jb250aWdfcmFuZ2UoKS4KPiAKPiBMZXQncyBzZWUgd2hhdCBNaWNo
YWwgdGhpbmtzLiBUaGFua3MhCj4gCj4gLS0gCj4gVGhhbmtzLAo+IAo+IERhdmlkIC8gZGhpbGRl
bmIKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
