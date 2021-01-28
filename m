Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 52058307E91
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 20:04:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58D0B607C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 19:04:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4ADFB6171B; Thu, 28 Jan 2021 19:04:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 679CB6674C;
	Thu, 28 Jan 2021 19:04:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DCE59607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 19:04:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BA0ED6674C; Thu, 28 Jan 2021 19:04:21 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id B3487607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 19:04:20 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id l12so6524211wry.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 11:04:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z1mBGE+hWjeJJ/jGNDjKQ5+t0s9/hE5JODYqUiqWYZA=;
 b=Lh52x7iPH+rdV6x6xYCd5NOTSKmOIpUdWaS1r/MFD3XmOff5EDCE9TYtgQwt9H097V
 rFGSyk3DDkI0kV/eZ2Hz9L+RscHwTs8AsF3tC67RWhhrCMjFnilJgNYy63cf1mc3TrUx
 O0IpvsRukjDP7y7TNWxFxn6mGofp5ZQt3np4uSWNog7jJih1CjqP1+9TBeBlJ0IilPfS
 oR4BzzciJoqcef+ipHtQb04hVAtajYRVQQf/zp8mGeyZyde8+NwzMTl3DXXD8J4N8Dkp
 HvslKgvmIxwYv97Lmgy/OBm2dEgy8iDQPNgw3iVl8i6I0MbeLsPkS5d+lOFbobiI9aQD
 rwdA==
X-Gm-Message-State: AOAM530206MZ9XNrfSrVQCkBHsRQVY5lUS35oMfKvbXq5Fpg30fo296R
 fX17XVdoRVQcyLxf5cyXmAT/CG54JwGlivzX1hdsGw==
X-Google-Smtp-Source: ABdhPJzU+yAZDVUahLL+Mz4iW/dd2qmW35B9XB0ElgmFdSQqyl9/AMlBhPYuxZI/BQrVQsSRS953LG8fPGEYLieTXus=
X-Received: by 2002:adf:e50e:: with SMTP id j14mr633534wrm.162.1611860659790; 
 Thu, 28 Jan 2021 11:04:19 -0800 (PST)
MIME-Version: 1.0
References: <20210128182432.2216573-1-kaleshsingh@google.com>
 <20210128182432.2216573-2-kaleshsingh@google.com>
In-Reply-To: <20210128182432.2216573-2-kaleshsingh@google.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Thu, 28 Jan 2021 11:04:09 -0800
Message-ID: <CAJuCfpGgoFyRxm9__5ZwOnCahoUCi0y+-q7s-x10_4JKOq9y1w@mail.gmail.com>
To: Kalesh Singh <kaleshsingh@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrei Vagin <avagin@gmail.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Michel Lespinasse <walken@google.com>, Jeffrey Vander Stoep <jeffv@google.com>,
 kernel-team <kernel-team@android.com>, Alexey Dobriyan <adobriyan@gmail.com>,
 linux-media <linux-media@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-fsdevel@vger.kernel.org, Bernd Edlinger <bernd.edlinger@hotmail.de>,
 Alexey Gladkov <gladkov.alexey@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>, Yafang Shao <laoar.shao@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] procfs: Allow reading fdinfo with
	PTRACE_MODE_READ
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

T24gVGh1LCBKYW4gMjgsIDIwMjEgYXQgMTA6MjQgQU0gS2FsZXNoIFNpbmdoIDxrYWxlc2hzaW5n
aEBnb29nbGUuY29tPiB3cm90ZToKPgo+IFNpbmNlIGZkaW5mbyBkb2Vzbid0IHBlcm1pdCByZWFk
aW5nIHByb2Nlc3MgbWVtb3J5IGFuZCBtYW5pcHVsYXRpbmcKPiBwcm9jZXNzIHN0YXRlLCBhbGxv
dyBhY2Nlc3NpbmcgZmRpbmZvIHVuZGVyIFBUUkFDRV9NT0RFX1JFQURfRlNDUkVELgoKSSB3b3Vs
ZCBjb3B5IHNvbWUgb2YgdGhlIHJlYXNvbmluZyBmcm9tIHlvdXIgY292ZXIgbGV0dGVyIHNvIHRo
YXQgdGhpcwpwYXRjaCBoYXMgbW9yZSBjb250ZXh0IG9uIGl0cyBvd24gd2hlbiBtZXJnZWQuCgo+
Cj4gU3VnZ2VzdGVkLWJ5OiBKYW5uIEhvcm4gPGphbm5oQGdvb2dsZS5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogS2FsZXNoIFNpbmdoIDxrYWxlc2hzaW5naEBnb29nbGUuY29tPgo+IC0tLQo+ICBmcy9w
cm9jL2Jhc2UuYyB8ICA0ICsrLS0KPiAgZnMvcHJvYy9mZC5jICAgfCAxNSArKysrKysrKysrKysr
Ky0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2ZzL3Byb2MvYmFzZS5jIGIvZnMvcHJvYy9iYXNlLmMKPiBpbmRleCBi
MzQyMmNkYTJhOTEuLmEzN2Y5ZGU3MTAzZiAxMDA2NDQKPiAtLS0gYS9mcy9wcm9jL2Jhc2UuYwo+
ICsrKyBiL2ZzL3Byb2MvYmFzZS5jCj4gQEAgLTMxNjAsNyArMzE2MCw3IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgcGlkX2VudHJ5IHRnaWRfYmFzZV9zdHVmZltdID0gewo+ICAgICAgICAgRElSKCJ0
YXNrIiwgICAgICAgU19JUlVHT3xTX0lYVUdPLCBwcm9jX3Rhc2tfaW5vZGVfb3BlcmF0aW9ucywg
cHJvY190YXNrX29wZXJhdGlvbnMpLAo+ICAgICAgICAgRElSKCJmZCIsICAgICAgICAgU19JUlVT
UnxTX0lYVVNSLCBwcm9jX2ZkX2lub2RlX29wZXJhdGlvbnMsIHByb2NfZmRfb3BlcmF0aW9ucyks
Cj4gICAgICAgICBESVIoIm1hcF9maWxlcyIsICBTX0lSVVNSfFNfSVhVU1IsIHByb2NfbWFwX2Zp
bGVzX2lub2RlX29wZXJhdGlvbnMsIHByb2NfbWFwX2ZpbGVzX29wZXJhdGlvbnMpLAo+IC0gICAg
ICAgRElSKCJmZGluZm8iLCAgICAgU19JUlVTUnxTX0lYVVNSLCBwcm9jX2ZkaW5mb19pbm9kZV9v
cGVyYXRpb25zLCBwcm9jX2ZkaW5mb19vcGVyYXRpb25zKSwKPiArICAgICAgIERJUigiZmRpbmZv
IiwgICAgIFNfSVJVR098U19JWFVHTywgcHJvY19mZGluZm9faW5vZGVfb3BlcmF0aW9ucywgcHJv
Y19mZGluZm9fb3BlcmF0aW9ucyksCj4gICAgICAgICBESVIoIm5zIiwgICAgICAgICBTX0lSVVNS
fFNfSVhVR08sIHByb2NfbnNfZGlyX2lub2RlX29wZXJhdGlvbnMsIHByb2NfbnNfZGlyX29wZXJh
dGlvbnMpLAo+ICAjaWZkZWYgQ09ORklHX05FVAo+ICAgICAgICAgRElSKCJuZXQiLCAgICAgICAg
U19JUlVHT3xTX0lYVUdPLCBwcm9jX25ldF9pbm9kZV9vcGVyYXRpb25zLCBwcm9jX25ldF9vcGVy
YXRpb25zKSwKPiBAQCAtMzUwNCw3ICszNTA0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbm9k
ZV9vcGVyYXRpb25zIHByb2NfdGlkX2NvbW1faW5vZGVfb3BlcmF0aW9ucyA9IHsKPiAgICovCj4g
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGlkX2VudHJ5IHRpZF9iYXNlX3N0dWZmW10gPSB7Cj4gICAg
ICAgICBESVIoImZkIiwgICAgICAgIFNfSVJVU1J8U19JWFVTUiwgcHJvY19mZF9pbm9kZV9vcGVy
YXRpb25zLCBwcm9jX2ZkX29wZXJhdGlvbnMpLAo+IC0gICAgICAgRElSKCJmZGluZm8iLCAgICBT
X0lSVVNSfFNfSVhVU1IsIHByb2NfZmRpbmZvX2lub2RlX29wZXJhdGlvbnMsIHByb2NfZmRpbmZv
X29wZXJhdGlvbnMpLAo+ICsgICAgICAgRElSKCJmZGluZm8iLCAgICBTX0lSVUdPfFNfSVhVR08s
IHByb2NfZmRpbmZvX2lub2RlX29wZXJhdGlvbnMsIHByb2NfZmRpbmZvX29wZXJhdGlvbnMpLAo+
ICAgICAgICAgRElSKCJucyIsICAgICAgICBTX0lSVVNSfFNfSVhVR08sIHByb2NfbnNfZGlyX2lu
b2RlX29wZXJhdGlvbnMsIHByb2NfbnNfZGlyX29wZXJhdGlvbnMpLAo+ICAjaWZkZWYgQ09ORklH
X05FVAo+ICAgICAgICAgRElSKCJuZXQiLCAgICAgICAgU19JUlVHT3xTX0lYVUdPLCBwcm9jX25l
dF9pbm9kZV9vcGVyYXRpb25zLCBwcm9jX25ldF9vcGVyYXRpb25zKSwKPiBkaWZmIC0tZ2l0IGEv
ZnMvcHJvYy9mZC5jIGIvZnMvcHJvYy9mZC5jCj4gaW5kZXggY2I1MTc2M2VkNTU0Li41ODVlMjEz
MzAxZjkgMTAwNjQ0Cj4gLS0tIGEvZnMvcHJvYy9mZC5jCj4gKysrIGIvZnMvcHJvYy9mZC5jCj4g
QEAgLTYsNiArNiw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9mZHRhYmxlLmg+Cj4gICNpbmNsdWRl
IDxsaW51eC9uYW1laS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGlkLmg+Cj4gKyNpbmNsdWRlIDxs
aW51eC9wdHJhY2UuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3NlY3VyaXR5Lmg+Cj4gICNpbmNsdWRl
IDxsaW51eC9maWxlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9zZXFfZmlsZS5oPgo+IEBAIC03Miw2
ICs3MywxOCBAQCBzdGF0aWMgaW50IHNlcV9zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAq
dikKPgo+ICBzdGF0aWMgaW50IHNlcV9mZGluZm9fb3BlbihzdHJ1Y3QgaW5vZGUgKmlub2RlLCBz
dHJ1Y3QgZmlsZSAqZmlsZSkKPiAgewo+ICsgICAgICAgYm9vbCBhbGxvd2VkID0gZmFsc2U7Cj4g
KyAgICAgICBzdHJ1Y3QgdGFza19zdHJ1Y3QgKnRhc2sgPSBnZXRfcHJvY190YXNrKGlub2RlKTsK
PiArCj4gKyAgICAgICBpZiAoIXRhc2spCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRVNSQ0g7
Cj4gKwo+ICsgICAgICAgYWxsb3dlZCA9IHB0cmFjZV9tYXlfYWNjZXNzKHRhc2ssIFBUUkFDRV9N
T0RFX1JFQURfRlNDUkVEUyk7Cj4gKyAgICAgICBwdXRfdGFza19zdHJ1Y3QodGFzayk7Cj4gKwo+
ICsgICAgICAgaWYgKCFhbGxvd2VkKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVBQ0NFUzsK
PiArCj4gICAgICAgICByZXR1cm4gc2luZ2xlX29wZW4oZmlsZSwgc2VxX3Nob3csIGlub2RlKTsK
PiAgfQo+Cj4gQEAgLTMwNyw3ICszMjAsNyBAQCBzdGF0aWMgc3RydWN0IGRlbnRyeSAqcHJvY19m
ZGluZm9faW5zdGFudGlhdGUoc3RydWN0IGRlbnRyeSAqZGVudHJ5LAo+ICAgICAgICAgc3RydWN0
IHByb2NfaW5vZGUgKmVpOwo+ICAgICAgICAgc3RydWN0IGlub2RlICppbm9kZTsKPgo+IC0gICAg
ICAgaW5vZGUgPSBwcm9jX3BpZF9tYWtlX2lub2RlKGRlbnRyeS0+ZF9zYiwgdGFzaywgU19JRlJF
RyB8IFNfSVJVU1IpOwo+ICsgICAgICAgaW5vZGUgPSBwcm9jX3BpZF9tYWtlX2lub2RlKGRlbnRy
eS0+ZF9zYiwgdGFzaywgU19JRlJFRyB8IFNfSVJVR08pOwo+ICAgICAgICAgaWYgKCFpbm9kZSkK
PiAgICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT0VOVCk7Cj4KPiAtLQo+IDIuMzAu
MC4zNjUuZzAyYmM2OTM3ODktZ29vZwo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
