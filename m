Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 59817307E95
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 20:13:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D2466171B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 19:13:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 704576675F; Thu, 28 Jan 2021 19:13:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C64C6674C;
	Thu, 28 Jan 2021 19:12:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0800360C30
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 19:12:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D9C056674C; Thu, 28 Jan 2021 19:12:32 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by lists.linaro.org (Postfix) with ESMTPS id B3BDB60C30
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 19:12:31 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id u67so4638459pfb.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 11:12:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IBcaBxN7rIYPltmLF4tz+shL5hdw0svuXh9/OlgZjcM=;
 b=JqZi4MEP3YT9zVLVEfYJLgJr55Uk77Bg8Uyxezt3VhWG4oBWVjKu787xWue5bofMbi
 RNRffwINE2NVEuL9lDyFBTs4piTVFWTSbsYnRZsJs3/B/2rc40UWO19T1IwIaoZpYuMc
 xUwlhNF6SOmA2v+bFe9+amSsaL8HAohU7/D5h4Cfa80IE85SZUXU0V4ehS6SdQzAV5D/
 iKPSZoeV7oXr7vf351yFivz1LjHIy0c1pPM217DgEcrscKC1eecQULJ9hVgTctl2tmjs
 axtnoQhj8qij/O3ugR4ZVizLS0GXPfg158AAHQkcdRSMp/tGYUgrU3qPBi1ibakSyOi8
 Tr7w==
X-Gm-Message-State: AOAM5318bY2h+eBU3nAyWE3N2LJoFra0FghAQrKS6U5MvL5n3K9VHFET
 XhtYMGTdX2M6q9JtEuI+fMDR27FO0fAFEdOnSBiLLQ==
X-Google-Smtp-Source: ABdhPJyUv+dwd5WmKqNz38zZST1AP9P7WbtSgmpv3u0AckrDw+zwOSpL51rCjkrQcRQq9tWDnAWSbybhCw0ZlnYaPhY=
X-Received: by 2002:aa7:910a:0:b029:1c8:9947:305c with SMTP id
 10-20020aa7910a0000b02901c89947305cmr896292pfh.75.1611861150754; Thu, 28 Jan
 2021 11:12:30 -0800 (PST)
MIME-Version: 1.0
References: <20210128182432.2216573-1-kaleshsingh@google.com>
 <20210128182432.2216573-2-kaleshsingh@google.com>
 <CAJuCfpGgoFyRxm9__5ZwOnCahoUCi0y+-q7s-x10_4JKOq9y1w@mail.gmail.com>
In-Reply-To: <CAJuCfpGgoFyRxm9__5ZwOnCahoUCi0y+-q7s-x10_4JKOq9y1w@mail.gmail.com>
From: Kalesh Singh <kaleshsingh@google.com>
Date: Thu, 28 Jan 2021 14:12:17 -0500
Message-ID: <CAC_TJveR2kJ044CjS5qJ7EFcrW1-B198sLDqKwwVWbA63DHWmg@mail.gmail.com>
To: Suren Baghdasaryan <surenb@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrei Vagin <avagin@gmail.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Michel Lespinasse <walken@google.com>, Jeffrey Vander Stoep <jeffv@google.com>,
 kernel-team <kernel-team@android.com>, Alexey Dobriyan <adobriyan@gmail.com>,
 linux-media <linux-media@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Bernd Edlinger <bernd.edlinger@hotmail.de>,
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

T24gVGh1LCBKYW4gMjgsIDIwMjEgYXQgMjowNCBQTSBTdXJlbiBCYWdoZGFzYXJ5YW4gPHN1cmVu
YkBnb29nbGUuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgSmFuIDI4LCAyMDIxIGF0IDEwOjI0IEFN
IEthbGVzaCBTaW5naCA8a2FsZXNoc2luZ2hAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4gPgo+ID4gU2lu
Y2UgZmRpbmZvIGRvZXNuJ3QgcGVybWl0IHJlYWRpbmcgcHJvY2VzcyBtZW1vcnkgYW5kIG1hbmlw
dWxhdGluZwo+ID4gcHJvY2VzcyBzdGF0ZSwgYWxsb3cgYWNjZXNzaW5nIGZkaW5mbyB1bmRlciBQ
VFJBQ0VfTU9ERV9SRUFEX0ZTQ1JFRC4KPgo+IEkgd291bGQgY29weSBzb21lIG9mIHRoZSByZWFz
b25pbmcgZnJvbSB5b3VyIGNvdmVyIGxldHRlciBzbyB0aGF0IHRoaXMKPiBwYXRjaCBoYXMgbW9y
ZSBjb250ZXh0IG9uIGl0cyBvd24gd2hlbiBtZXJnZWQuCgpTb3VuZHMgZ29vZC4gSSdsbCB1cGRh
dGUgdGhpcyBkZXNjcmlwdGlvbiBpbiB0aGUgbmV4dCB2ZXJzaW9uLgoKPgo+ID4KPiA+IFN1Z2dl
c3RlZC1ieTogSmFubiBIb3JuIDxqYW5uaEBnb29nbGUuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTog
S2FsZXNoIFNpbmdoIDxrYWxlc2hzaW5naEBnb29nbGUuY29tPgo+ID4gLS0tCj4gPiAgZnMvcHJv
Yy9iYXNlLmMgfCAgNCArKy0tCj4gPiAgZnMvcHJvYy9mZC5jICAgfCAxNSArKysrKysrKysrKysr
Ky0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2ZzL3Byb2MvYmFzZS5jIGIvZnMvcHJvYy9iYXNlLmMKPiA+
IGluZGV4IGIzNDIyY2RhMmE5MS4uYTM3ZjlkZTcxMDNmIDEwMDY0NAo+ID4gLS0tIGEvZnMvcHJv
Yy9iYXNlLmMKPiA+ICsrKyBiL2ZzL3Byb2MvYmFzZS5jCj4gPiBAQCAtMzE2MCw3ICszMTYwLDcg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwaWRfZW50cnkgdGdpZF9iYXNlX3N0dWZmW10gPSB7Cj4g
PiAgICAgICAgIERJUigidGFzayIsICAgICAgIFNfSVJVR098U19JWFVHTywgcHJvY190YXNrX2lu
b2RlX29wZXJhdGlvbnMsIHByb2NfdGFza19vcGVyYXRpb25zKSwKPiA+ICAgICAgICAgRElSKCJm
ZCIsICAgICAgICAgU19JUlVTUnxTX0lYVVNSLCBwcm9jX2ZkX2lub2RlX29wZXJhdGlvbnMsIHBy
b2NfZmRfb3BlcmF0aW9ucyksCj4gPiAgICAgICAgIERJUigibWFwX2ZpbGVzIiwgIFNfSVJVU1J8
U19JWFVTUiwgcHJvY19tYXBfZmlsZXNfaW5vZGVfb3BlcmF0aW9ucywgcHJvY19tYXBfZmlsZXNf
b3BlcmF0aW9ucyksCj4gPiAtICAgICAgIERJUigiZmRpbmZvIiwgICAgIFNfSVJVU1J8U19JWFVT
UiwgcHJvY19mZGluZm9faW5vZGVfb3BlcmF0aW9ucywgcHJvY19mZGluZm9fb3BlcmF0aW9ucyks
Cj4gPiArICAgICAgIERJUigiZmRpbmZvIiwgICAgIFNfSVJVR098U19JWFVHTywgcHJvY19mZGlu
Zm9faW5vZGVfb3BlcmF0aW9ucywgcHJvY19mZGluZm9fb3BlcmF0aW9ucyksCj4gPiAgICAgICAg
IERJUigibnMiLCAgICAgICAgIFNfSVJVU1J8U19JWFVHTywgcHJvY19uc19kaXJfaW5vZGVfb3Bl
cmF0aW9ucywgcHJvY19uc19kaXJfb3BlcmF0aW9ucyksCj4gPiAgI2lmZGVmIENPTkZJR19ORVQK
PiA+ICAgICAgICAgRElSKCJuZXQiLCAgICAgICAgU19JUlVHT3xTX0lYVUdPLCBwcm9jX25ldF9p
bm9kZV9vcGVyYXRpb25zLCBwcm9jX25ldF9vcGVyYXRpb25zKSwKPiA+IEBAIC0zNTA0LDcgKzM1
MDQsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlub2RlX29wZXJhdGlvbnMgcHJvY190aWRfY29t
bV9pbm9kZV9vcGVyYXRpb25zID0gewo+ID4gICAqLwo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
cGlkX2VudHJ5IHRpZF9iYXNlX3N0dWZmW10gPSB7Cj4gPiAgICAgICAgIERJUigiZmQiLCAgICAg
ICAgU19JUlVTUnxTX0lYVVNSLCBwcm9jX2ZkX2lub2RlX29wZXJhdGlvbnMsIHByb2NfZmRfb3Bl
cmF0aW9ucyksCj4gPiAtICAgICAgIERJUigiZmRpbmZvIiwgICAgU19JUlVTUnxTX0lYVVNSLCBw
cm9jX2ZkaW5mb19pbm9kZV9vcGVyYXRpb25zLCBwcm9jX2ZkaW5mb19vcGVyYXRpb25zKSwKPiA+
ICsgICAgICAgRElSKCJmZGluZm8iLCAgICBTX0lSVUdPfFNfSVhVR08sIHByb2NfZmRpbmZvX2lu
b2RlX29wZXJhdGlvbnMsIHByb2NfZmRpbmZvX29wZXJhdGlvbnMpLAo+ID4gICAgICAgICBESVIo
Im5zIiwgICAgICAgIFNfSVJVU1J8U19JWFVHTywgcHJvY19uc19kaXJfaW5vZGVfb3BlcmF0aW9u
cywgcHJvY19uc19kaXJfb3BlcmF0aW9ucyksCj4gPiAgI2lmZGVmIENPTkZJR19ORVQKPiA+ICAg
ICAgICAgRElSKCJuZXQiLCAgICAgICAgU19JUlVHT3xTX0lYVUdPLCBwcm9jX25ldF9pbm9kZV9v
cGVyYXRpb25zLCBwcm9jX25ldF9vcGVyYXRpb25zKSwKPiA+IGRpZmYgLS1naXQgYS9mcy9wcm9j
L2ZkLmMgYi9mcy9wcm9jL2ZkLmMKPiA+IGluZGV4IGNiNTE3NjNlZDU1NC4uNTg1ZTIxMzMwMWY5
IDEwMDY0NAo+ID4gLS0tIGEvZnMvcHJvYy9mZC5jCj4gPiArKysgYi9mcy9wcm9jL2ZkLmMKPiA+
IEBAIC02LDYgKzYsNyBAQAo+ID4gICNpbmNsdWRlIDxsaW51eC9mZHRhYmxlLmg+Cj4gPiAgI2lu
Y2x1ZGUgPGxpbnV4L25hbWVpLmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L3BpZC5oPgo+ID4gKyNp
bmNsdWRlIDxsaW51eC9wdHJhY2UuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvc2VjdXJpdHkuaD4K
PiA+ICAjaW5jbHVkZSA8bGludXgvZmlsZS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9zZXFfZmls
ZS5oPgo+ID4gQEAgLTcyLDYgKzczLDE4IEBAIHN0YXRpYyBpbnQgc2VxX3Nob3coc3RydWN0IHNl
cV9maWxlICptLCB2b2lkICp2KQo+ID4KPiA+ICBzdGF0aWMgaW50IHNlcV9mZGluZm9fb3Blbihz
dHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKPiA+ICB7Cj4gPiArICAgICAg
IGJvb2wgYWxsb3dlZCA9IGZhbHNlOwo+ID4gKyAgICAgICBzdHJ1Y3QgdGFza19zdHJ1Y3QgKnRh
c2sgPSBnZXRfcHJvY190YXNrKGlub2RlKTsKPiA+ICsKPiA+ICsgICAgICAgaWYgKCF0YXNrKQo+
ID4gKyAgICAgICAgICAgICAgIHJldHVybiAtRVNSQ0g7Cj4gPiArCj4gPiArICAgICAgIGFsbG93
ZWQgPSBwdHJhY2VfbWF5X2FjY2Vzcyh0YXNrLCBQVFJBQ0VfTU9ERV9SRUFEX0ZTQ1JFRFMpOwo+
ID4gKyAgICAgICBwdXRfdGFza19zdHJ1Y3QodGFzayk7Cj4gPiArCj4gPiArICAgICAgIGlmICgh
YWxsb3dlZCkKPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVBQ0NFUzsKPiA+ICsKPiA+ICAg
ICAgICAgcmV0dXJuIHNpbmdsZV9vcGVuKGZpbGUsIHNlcV9zaG93LCBpbm9kZSk7Cj4gPiAgfQo+
ID4KPiA+IEBAIC0zMDcsNyArMzIwLDcgQEAgc3RhdGljIHN0cnVjdCBkZW50cnkgKnByb2NfZmRp
bmZvX2luc3RhbnRpYXRlKHN0cnVjdCBkZW50cnkgKmRlbnRyeSwKPiA+ICAgICAgICAgc3RydWN0
IHByb2NfaW5vZGUgKmVpOwo+ID4gICAgICAgICBzdHJ1Y3QgaW5vZGUgKmlub2RlOwo+ID4KPiA+
IC0gICAgICAgaW5vZGUgPSBwcm9jX3BpZF9tYWtlX2lub2RlKGRlbnRyeS0+ZF9zYiwgdGFzaywg
U19JRlJFRyB8IFNfSVJVU1IpOwo+ID4gKyAgICAgICBpbm9kZSA9IHByb2NfcGlkX21ha2VfaW5v
ZGUoZGVudHJ5LT5kX3NiLCB0YXNrLCBTX0lGUkVHIHwgU19JUlVHTyk7Cj4gPiAgICAgICAgIGlm
ICghaW5vZGUpCj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT0VOVCk7Cj4g
Pgo+ID4gLS0KPiA+IDIuMzAuMC4zNjUuZzAyYmM2OTM3ODktZ29vZwo+ID4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
