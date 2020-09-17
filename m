Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA5F26DB7A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 14:27:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 75170619CE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 12:27:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 60485666D9; Thu, 17 Sep 2020 12:27:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 82D04618C2;
	Thu, 17 Sep 2020 12:26:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B4D9660723
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 12:26:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A6AC06094E; Thu, 17 Sep 2020 12:26:41 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 6E87060723
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 12:26:40 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id g4so1855094wrs.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 05:26:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=776kE571jxALYsOg06ejCyM2zHb/SfLHRc5/m8v10ss=;
 b=CUzl13/E24eGhzKkA9YVoEhSj8MIQsvtmaGmNXuOWkPMRd60/TWZ+VFgBZifB9oc5q
 kWxatrmYRdEKYRqre+MPWM7WN28ZItpXkJyZDvtvgvQLdyFUbdOGAjeoFU4DdcjqUoaR
 ywnnNh0v9c1Vfby5PYQARnNPX43uWHCbqHg8gKKs1BvM/sW2EsUVGKc6IJNtE3mePikb
 U600BhlaEHuMbEhsKX/V92EW+DiVCFl/lAY3amWwD5NlUBXfaHH3HQj+SdkpPet7c0Yf
 U47aKVILss9JISZEQcjMn2fojQB4Rgp4zU+Q7YfUBCCSX3kNpw7hvxTaCau3yvRzKtrG
 nZtg==
X-Gm-Message-State: AOAM530+xHeaGMiK260jK+y/ABLowUCapVG5aFbFmEPeBOoFoPyEL5ug
 QXbxCEVr+LMXZIumeb0KB0CBHA==
X-Google-Smtp-Source: ABdhPJxsVUfr3DZLp2Gh7FRSChhAJlPPexeSjbdhob6/sk140ihZIXopzA3J7Zp+4xfpjlTSOU6Fyg==
X-Received: by 2002:a5d:4a49:: with SMTP id v9mr34943739wrs.153.1600345599608; 
 Thu, 17 Sep 2020 05:26:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u186sm10458866wmu.34.2020.09.17.05.26.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Sep 2020 05:26:38 -0700 (PDT)
Date: Thu, 17 Sep 2020 14:26:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: christian.koenig@amd.com
Message-ID: <20200917122636.GW438822@phenom.ffwll.local>
Mail-Followup-To: christian.koenig@amd.com, Jason Gunthorpe <jgg@ziepe.ca>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Linux MM <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
References: <8db2474f-ecb7-0e17-5f5b-145708fe44d5@amd.com>
 <CAKMK7uFdwrT3HACPh3ADAKvhXJ-Hf3dExZmgJVAQ1KKjSai_0w@mail.gmail.com>
 <aa953b09-53b1-104b-dc4b-156ad8a75e62@gmail.com>
 <CAKMK7uHJNRzCJfWVSmMrLmGXE0qo+OCXiMd+zPTOkeG2pnVrmQ@mail.gmail.com>
 <8d8693db-a3f0-4f5f-3e32-57d23ca620f8@amd.com>
 <CAKMK7uE=UqZD3PVC8XZAXrgGH-VsUF_-YQD3MLV8KK1kpxO4yQ@mail.gmail.com>
 <20200917113110.GE8409@ziepe.ca>
 <6fd74b84-959c-8b3b-c27b-e9fbf66396c7@gmail.com>
 <20200917121858.GF8409@ziepe.ca>
 <d82f08ee-2dec-18e8-fb06-d26f18ed777a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d82f08ee-2dec-18e8-fb06-d26f18ed777a@gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Linux MM <linux-mm@kvack.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Daniel Vetter <daniel@ffwll.ch>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] Changing vma->vm_file in dma_buf_mmap()
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

T24gVGh1LCBTZXAgMTcsIDIwMjAgYXQgMDI6MjQ6MjlQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAxNy4wOS4yMCB1bSAxNDoxOCBzY2hyaWViIEphc29uIEd1bnRob3JwZToK
PiA+IE9uIFRodSwgU2VwIDE3LCAyMDIwIGF0IDAyOjAzOjQ4UE0gKzAyMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6Cj4gPiA+IEFtIDE3LjA5LjIwIHVtIDEzOjMxIHNjaHJpZWIgSmFzb24gR3Vu
dGhvcnBlOgo+ID4gPiA+IE9uIFRodSwgU2VwIDE3LCAyMDIwIGF0IDEwOjA5OjEyQU0gKzAyMDAs
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiA+ID4gCj4gPiA+ID4gPiBZZWFoLCBidXQgaXQgZG9l
c24ndCB3b3JrIHdoZW4gZm9yd2FyZGluZyBmcm9tIHRoZSBkcm0gY2hhcmRldiB0byB0aGUKPiA+
ID4gPiA+IGRtYS1idWYgb24gdGhlIGltcG9ydGVyIHNpZGUsIHNpbmNlIHlvdSdkIG5lZWQgYSB0
b24gb2YgZGlmZmVyZW50Cj4gPiA+ID4gPiBhZGRyZXNzIHNwYWNlcy4gQW5kIHlvdSBzdGlsbCBy
ZWx5IG9uIHRoZSBjb3JlIGNvZGUgcGlja2luZyB1cCB5b3VyCj4gPiA+ID4gPiBwZ29mZiBtYW5n
bGluZywgd2hpY2ggZmVlbHMgYWJvdXQgYXMgcmlza3kgdG8gbWUgYXMgdGhlIHZtYSBmaWxlCj4g
PiA+ID4gPiBwb2ludGVyIHdyYW5nbGluZyAtIGlmIGl0J3Mgbm90IGNvbnNpc3RlbnRseSBhcHBs
aWVkIHRoZSByZXZlcnNlIG1hcAo+ID4gPiA+ID4gaXMgdG9hc3QgYW5kIHVubWFwX21hcHBpbmdf
cmFuZ2UgZG9lc24ndCB3b3JrIGNvcnJlY3RseSBmb3Igb3VyIG5lZWRzLgo+ID4gPiA+IEkgd291
bGQgdGhpbmsgdGhlIHBnb2ZmIGhhcyB0byBiZSB0cmFuc2xhdGVkIGF0IHRoZSBzYW1lIHRpbWUg
dGhlCj4gPiA+ID4gdm0tPnZtX2ZpbGUgaXMgY2hhbmdlZD8KPiA+ID4gPiAKPiA+ID4gPiBUaGUg
b3duZXIgb2YgdGhlIGRtYV9idWYgc2hvdWxkIGhhdmUgb25lIHZpcnR1YWwgYWRkcmVzcyBzcGFj
ZSBhbmQgRkQsCj4gPiA+ID4gYWxsIGl0cyBkbWEgYnVmcyBzaG91bGQgYmUgbGlua2VkIHRvIGl0
LCBhbmQgYWxsIHBnb2ZmcyB0cmFuc2xhdGVkIHRvCj4gPiA+ID4gdGhhdCBzcGFjZS4KPiA+ID4g
WWVhaCwgdGhhdCBpcyBleGFjdGx5IGxpa2UgYW1kZ3B1IGlzIGRvaW5nIGl0Lgo+ID4gPiAKPiA+
ID4gR29pbmcgdG8gZG9jdW1lbnQgdGhhdCBzb21laG93IHdoZW4gSSdtIGRvbmUgd2l0aCBUVE0g
Y2xlYW51cHMuCj4gPiBCVFcsIHdoaWxlIHBlb3BsZSBhcmUgbG9va2luZyBhdCB0aGlzLCBpcyB0
aGVyZSBhIHdheSB0byBnbyBmcm9tIGEgVk1BCj4gPiB0byBhIGRtYV9idWYgdGhhdCBvd25zIGl0
Pwo+IAo+IE9ubHkgYSBkcml2ZXIgc3BlY2lmaWMgb25lLgo+IAo+IEZvciBUVE0gZHJpdmVycyB2
bWEtPnZtX3ByaXZhdGVfZGF0YSBwb2ludHMgdG8gdGhlIGJ1ZmZlciBvYmplY3QuIE5vdCBzdXJl
Cj4gYWJvdXQgdGhlIGRyaXZlcnMgdXNpbmcgR0VNIG9ubHkuCgpGb3IgZ2VtIGRyaXZlcnMgKHdo
aWNoIGluY2x1ZGVzIHRoZSBvbmVzIHVzaW5nIHZyYW0gaGVscGVycywgd2hpY2ggdXNlcwp0dG0g
aW50ZXJuYWxseSkgdGhhdCBwb2ludHMgYXQgdGhlIGRybV9nZW1fb2JqZWN0IHBvaW50ZXIuIEkg
Z3Vlc3MgdGhhdAptaWdodCBiZSBzb21ldGhpbmcgd2UgY2FuIHVuaWZ5IGEgYml0IG9uIHRoZSB0
dG0gbW1hcCBwYXRocyBvZiB0aGUKcmVtYWluaW5nIGRyaXZlciwgbm93IHRoYXQgdGhlcmUncyBh
IGRybV9nZW1fb2JqZWN0IGVtYmVkZGVkIGFueXdheS4KLURhbmllbAoKPiAKPiBXaHkgYXJlIHlv
dSBhc2tpbmc/Cj4gCj4gUmVnYXJkcywKPiBDaHJpc3RpYW4uCj4gCj4gPiAKPiA+IEphc29uCj4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKPiA+IExpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
Zwo+ID4gaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo+IAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBv
cmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
