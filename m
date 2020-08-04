Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C763248570
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:54:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1FBE365FD7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:54:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0FFC460EFF; Tue, 18 Aug 2020 12:54:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FSL_HELO_FAKE,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8B6C666FE;
	Tue, 18 Aug 2020 12:32:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5A08E61887
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 13:54:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 41830618F1; Tue,  4 Aug 2020 13:54:18 +0000 (UTC)
Received: from mail-vk1-f196.google.com (mail-vk1-f196.google.com
 [209.85.221.196])
 by lists.linaro.org (Postfix) with ESMTPS id 45CB661887
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 13:54:17 +0000 (UTC)
Received: by mail-vk1-f196.google.com with SMTP id m18so9174439vkk.7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Aug 2020 06:54:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Gjh1CQhNcX/dKpwghpqe5PsnWMgHIT7SFzJs24h1UQM=;
 b=i/ReFXya8QZcQYUwEcw9cYeindylSdKSa2evRCRZ/KhsOWBD9T8+SLcaSQqENwddzV
 71IDBvaIqqotQPS0M5Hs7TgvaT45cBX5FAw/U++W/TgoLfPfoA1cMw3quraDXv1tCHyg
 yQpYmJVINYlYFLMUQ2tixMa7pxPTlgRBLi7V4CFYRBa6qHUqAmlhNVbJ1nAWyRQL9Ecs
 3bSlikMR2X2U9XacWmVE/G6YNfBg8jg0bsQ9oq1EXIxXStuQaSqa5XlgvNLQ5e0vO8aN
 8nNe+yqaYJVwVIVn3ioCUq9mRNNXtIGle18gG3CiNUmP5pN8Oi8r6WmIvlRfcvupopcp
 CasA==
X-Gm-Message-State: AOAM5330ztl+yr5S4rzg9wMpWWA2PosmGZkDAtqGupNToHed8H7BI/EM
 Kbz4EQqzvVYUqIzX5pcoSpxf4w==
X-Google-Smtp-Source: ABdhPJywEqRIB+C/laAdsWyb753dUVCT2rmRqL5RBMcCSf76aIKKVtfXUnjQ/uxnkDArh3Jzj6HeBQ==
X-Received: by 2002:a1f:bd02:: with SMTP id n2mr14859615vkf.1.1596549256680;
 Tue, 04 Aug 2020 06:54:16 -0700 (PDT)
Received: from google.com (182.71.196.35.bc.googleusercontent.com.
 [35.196.71.182])
 by smtp.gmail.com with ESMTPSA id n62sm3130893vke.12.2020.08.04.06.54.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Aug 2020 06:54:15 -0700 (PDT)
Date: Tue, 4 Aug 2020 13:54:12 +0000
From: Kalesh Singh <kaleshsingh@google.com>
To: Joel Fernandes <joelaf@google.com>
Message-ID: <20200804135412.GA934259@google.com>
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-2-kaleshsingh@google.com>
 <CAJWu+orzhpO5hPfUWd0EJp-ViWMifeQ_Ng+R4fHf7xabL+Bggw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJWu+orzhpO5hPfUWd0EJp-ViWMifeQ_Ng+R4fHf7xabL+Bggw@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 "Cc: Android Kernel" <kernel-team@android.com>,
 dri-devel@lists.freedesktop.org, Jonathan Corbet <corbet@lwn.net>,
 Ioannis Ilkos <ilkos@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, Ingo Molnar <mingo@redhat.com>,
 John Stultz <john.stultz@linaro.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] fs: Add fd_install file operation
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

T24gTW9uLCBBdWcgMDMsIDIwMjAgYXQgMDg6MzA6NTlQTSAtMDQwMCwgSm9lbCBGZXJuYW5kZXMg
d3JvdGU6Cj4gT24gTW9uLCBBdWcgMywgMjAyMCBhdCAxMDo0NyBBTSAnS2FsZXNoIFNpbmdoJyB2
aWEga2VybmVsLXRlYW0KPiA8a2VybmVsLXRlYW1AYW5kcm9pZC5jb20+IHdyb3RlOgo+ID4KPiA+
IFByb3ZpZGVzIGEgcGVyIHByb2Nlc3MgaG9vayBmb3IgdGhlIGFjcXVpc2l0aW9uIG9mIGZpbGUg
ZGVzY3JpcHRvcnMsCj4gPiBkZXNwaXRlIHRoZSBtZXRob2QgdXNlZCB0byBvYnRhaW4gdGhlIGRl
c2NyaXB0b3IuCj4gPgo+IAo+IEhpLAo+IFNvIGFwYXJ0IGZyb20gYWxsIG9mIHRoZSBjb21tZW50
cyByZWNlaXZlZCwgSSB0aGluayBpdCBpcyBoYXJkIHRvCj4gdW5kZXJzdGFuZCB3aGF0IHRoZSBw
cm9ibGVtIGlzLCB3aGF0IHRoZSBmcm9udC1lbmQgbG9va3MgbGlrZSBldGMuCj4gWW91ciBjb21t
aXQgbWVzc2FnZSBpcyAxIGxpbmUgb25seS4KPiAKPiBJIGRvIHJlbWVtYmVyIHNvbWUgb2YgdGhl
IGNoYWxsZW5nZXMgZGlzY3Vzc2VkIGJlZm9yZSwgYnV0IGl0IHdvdWxkCj4gZGVzY3JpYmUgdGhl
IHByb2JsZW0gaW4gdGhlIGNvbW1pdCBtZXNzYWdlIGluIGRldGFpbCBhbmQgdGhlbiBkaXNjdXNz
Cj4gd2h5IHRoaXMgc29sdXRpb24gaXMgZml0LiAgUGxlYXNlIHJlYWQgc3VibWl0dGluZy1wYXRj
aGVzLnJzdAo+IGVzcGVjaWFsbHkgIjIpIERlc2NyaWJlIHlvdXIgY2hhbmdlcyIuCj4gCj4gdGhh
bmtzLAo+IAo+ICAtIEpvZWwKClRoYW5rcyBmb3IgdGhlIGFkdmljZSBKb2VsIDopCj4gCj4gCj4g
PiBTaWduZWQtb2ZmLWJ5OiBLYWxlc2ggU2luZ2ggPGthbGVzaHNpbmdoQGdvb2dsZS5jb20+Cj4g
PiAtLS0KPiA+ICBEb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL3Zmcy5yc3QgfCA1ICsrKysrCj4g
PiAgZnMvZmlsZS5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgMyArKysKPiA+ICBpbmNsdWRl
L2xpbnV4L2ZzLmggICAgICAgICAgICAgICAgfCAxICsKPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDkg
aW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0
ZW1zL3Zmcy5yc3QgYi9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL3Zmcy5yc3QKPiA+IGluZGV4
IGVkMTc3NzFjMjEyYi4uOTViMzAxNDJjOGQ5IDEwMDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlv
bi9maWxlc3lzdGVtcy92ZnMucnN0Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1z
L3Zmcy5yc3QKPiA+IEBAIC0xMTIzLDYgKzExMjMsMTEgQEAgb3RoZXJ3aXNlIG5vdGVkLgo+ID4g
IGBgZmFkdmlzZWBgCj4gPiAgICAgICAgIHBvc3NpYmx5IGNhbGxlZCBieSB0aGUgZmFkdmlzZTY0
KCkgc3lzdGVtIGNhbGwuCj4gPgo+ID4gK2BgZmRfaW5zdGFsbGBgCj4gPiArICAgICAgIGNhbGxl
ZCBieSB0aGUgVkZTIHdoZW4gYSBmaWxlIGRlc2NyaXB0b3IgaXMgaW5zdGFsbGVkIGluIHRoZQo+
ID4gKyAgICAgICBwcm9jZXNzJ3MgZmlsZSBkZXNjcmlwdG9yIHRhYmxlLCByZWdhcmRsZXNzIGhv
dyB0aGUgZmlsZSBkZXNjcmlwdG9yCj4gPiArICAgICAgIHdhcyBhY3F1aXJlZCAtLSBiZSBpdCB2
aWEgdGhlIG9wZW4gc3lzY2FsbCwgcmVjZWl2ZWQgb3ZlciBJUEMsIGV0Yy4KPiA+ICsKPiA+ICBO
b3RlIHRoYXQgdGhlIGZpbGUgb3BlcmF0aW9ucyBhcmUgaW1wbGVtZW50ZWQgYnkgdGhlIHNwZWNp
ZmljCj4gPiAgZmlsZXN5c3RlbSBpbiB3aGljaCB0aGUgaW5vZGUgcmVzaWRlcy4gIFdoZW4gb3Bl
bmluZyBhIGRldmljZSBub2RlCj4gPiAgKGNoYXJhY3RlciBvciBibG9jayBzcGVjaWFsKSBtb3N0
IGZpbGVzeXN0ZW1zIHdpbGwgY2FsbCBzcGVjaWFsCj4gPiBkaWZmIC0tZ2l0IGEvZnMvZmlsZS5j
IGIvZnMvZmlsZS5jCj4gPiBpbmRleCBhYmI4YjcwODFkN2EuLmY1ZGI4NjIyYjg1MSAxMDA2NDQK
PiA+IC0tLSBhL2ZzL2ZpbGUuYwo+ID4gKysrIGIvZnMvZmlsZS5jCj4gPiBAQCAtNjE2LDYgKzYx
Niw5IEBAIHZvaWQgX19mZF9pbnN0YWxsKHN0cnVjdCBmaWxlc19zdHJ1Y3QgKmZpbGVzLCB1bnNp
Z25lZCBpbnQgZmQsCj4gPiAgdm9pZCBmZF9pbnN0YWxsKHVuc2lnbmVkIGludCBmZCwgc3RydWN0
IGZpbGUgKmZpbGUpCj4gPiAgewo+ID4gICAgICAgICBfX2ZkX2luc3RhbGwoY3VycmVudC0+Zmls
ZXMsIGZkLCBmaWxlKTsKPiA+ICsKPiA+ICsgICAgICAgaWYgKGZpbGUtPmZfb3AtPmZkX2luc3Rh
bGwpCj4gPiArICAgICAgICAgICAgICAgZmlsZS0+Zl9vcC0+ZmRfaW5zdGFsbChmZCwgZmlsZSk7
Cj4gPiAgfQo+ID4KPiA+ICBFWFBPUlRfU1lNQk9MKGZkX2luc3RhbGwpOwo+ID4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbGludXgvZnMuaCBiL2luY2x1ZGUvbGludXgvZnMuaAo+ID4gaW5kZXggZjVh
YmJhODYxMDdkLi5iOTc2ZmJlOGM5MDIgMTAwNjQ0Cj4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2Zz
LmgKPiA+ICsrKyBiL2luY2x1ZGUvbGludXgvZnMuaAo+ID4gQEAgLTE4NjQsNiArMTg2NCw3IEBA
IHN0cnVjdCBmaWxlX29wZXJhdGlvbnMgewo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgZmlsZSAqZmlsZV9vdXQsIGxvZmZfdCBwb3Nfb3V0LAo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsb2ZmX3QgbGVuLCB1bnNpZ25lZCBpbnQgcmVt
YXBfZmxhZ3MpOwo+ID4gICAgICAgICBpbnQgKCpmYWR2aXNlKShzdHJ1Y3QgZmlsZSAqLCBsb2Zm
X3QsIGxvZmZfdCwgaW50KTsKPiA+ICsgICAgICAgdm9pZCAoKmZkX2luc3RhbGwpKGludCwgc3Ry
dWN0IGZpbGUgKik7Cj4gPiAgfSBfX3JhbmRvbWl6ZV9sYXlvdXQ7Cj4gPgo+ID4gIHN0cnVjdCBp
bm9kZV9vcGVyYXRpb25zIHsKPiA+IC0tCj4gPiAyLjI4LjAuMTYzLmc2MTA0Y2MyZjBiNi1nb29n
Cj4gPgo+ID4gLS0KPiA+IFRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCBy
ZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8ga2VybmVsLXRlYW0rdW5z
dWJzY3JpYmVAYW5kcm9pZC5jb20uCj4gPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
