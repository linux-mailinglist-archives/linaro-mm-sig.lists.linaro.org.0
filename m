Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C52E2D5831
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 11:28:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6094460861
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 10:28:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 51AFA60F2C; Thu, 10 Dec 2020 10:28:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1AC1960BD9;
	Thu, 10 Dec 2020 10:27:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 94C5B604A8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 10:27:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8875E60BD9; Thu, 10 Dec 2020 10:27:32 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 1E705604A8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 10:27:31 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id d3so4156299wmb.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 02:27:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=l92zaKGCsUqQ/gxEstrfL6NDn1q+kjEay4OgM6ksKek=;
 b=N9SEu2UZ1Ks8M/Hv2xQiX6e0mqOPRY+FxwESai2wGvllZFjSowMxZSdhBAUSUSVkO6
 ce1lOsExCueY3m8TapvvobsOMilolY5bUWAGircLKlmZjhEtswmZCUI71nioV0YXN5uD
 imrn7HmZqnjfx5wFAS1roKedQh7SLR2eLKa/uCrdlh+90ZOwuroamaA7USc2WNlpRQYw
 VbPVRX9mCkkBeoXpBV1aGy1rI6N5RIyfQie3D2kp71h/gBk5vZ56jTXXmSftZctEByd0
 om5c61wmhZOTmG2ZD5U8+CmFTUW0otQFLj8vLMAEQbdpXlquzqgtuBpoN3Vt1buLQD5b
 s9ng==
X-Gm-Message-State: AOAM532SJzXUAWosA6dcBgIa+BzsLE1mnIstEIOl9HW6jQ4Xz1MFE5Wv
 L8hLg/W2h50sKc3FV658jzFKQQ==
X-Google-Smtp-Source: ABdhPJy6LrEU5I4bHa6NTCpIKzGWxUmYOzrDc8WN0RwYWzeap6wdM7DkzQUMvCNV9lfiw29hflZUpw==
X-Received: by 2002:a1c:f405:: with SMTP id z5mr7288798wma.93.1607596050214;
 Thu, 10 Dec 2020 02:27:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z64sm8259746wme.10.2020.12.10.02.27.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Dec 2020 02:27:29 -0800 (PST)
Date: Thu, 10 Dec 2020 11:27:27 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20201210102727.GE401619@phenom.ffwll.local>
Mail-Followup-To: Greg KH <gregkh@linuxfoundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 surenb@google.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, kernel-team@android.com,
 linux-media@vger.kernel.org
References: <20201210044400.1080308-1-hridya@google.com>
 <b5adfe46-8615-5821-d092-2b93feed5b79@amd.com>
 <X9H0JREcdxDsMtLX@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X9H0JREcdxDsMtLX@kroah.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-team@android.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, surenb@google.com,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dmabuf: Add the capability to expose
 DMA-BUF stats in sysfs
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

T24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMTE6MTA6NDVBTSArMDEwMCwgR3JlZyBLSCB3cm90ZToK
PiBPbiBUaHUsIERlYyAxMCwgMjAyMCBhdCAxMDo1ODo1MEFNICswMTAwLCBDaHJpc3RpYW4gS8O2
bmlnIHdyb3RlOgo+ID4gSW4gZ2VuZXJhbCBhIGdvb2QgaWRlYSwgYnV0IEkgaGF2ZSBhIGZldyBj
b25jZXJuL2NvbW1lbnRzIGhlcmUuCj4gPiAKPiA+IEFtIDEwLjEyLjIwIHVtIDA1OjQzIHNjaHJp
ZWIgSHJpZHlhIFZhbHNhcmFqdToKPiA+ID4gVGhpcyBwYXRjaCBhbGxvd3Mgc3RhdGlzdGljcyB0
byBiZSBlbmFibGVkIGZvciBlYWNoIERNQS1CVUYgaW4KPiA+ID4gc3lzZnMgYnkgZW5hYmxpbmcg
dGhlIGNvbmZpZyBDT05GSUdfRE1BQlVGX1NZU0ZTX1NUQVRTLgo+ID4gPiAKPiA+ID4gVGhlIGZv
bGxvd2luZyBzdGF0cyB3aWxsIGJlIGV4cG9zZWQgYnkgdGhlIGludGVyZmFjZToKPiA+ID4gCj4g
PiA+IC9zeXMva2VybmVsL2RtYWJ1Zi88aW5vZGVfbnVtYmVyPi9leHBvcnRlcl9uYW1lCj4gPiA+
IC9zeXMva2VybmVsL2RtYWJ1Zi88aW5vZGVfbnVtYmVyPi9zaXplCj4gPiA+IC9zeXMva2VybmVs
L2RtYWJ1Zi88aW5vZGVfbnVtYmVyPi9kZXZfbWFwX2luZm8KPiA+ID4gCj4gPiA+IFRoZSBpbm9k
ZV9udW1iZXIgaXMgdW5pcXVlIGZvciBlYWNoIERNQS1CVUYgYW5kIHdhcyBhZGRlZCBlYXJsaWVy
IFsxXQo+ID4gPiBpbiBvcmRlciB0byBhbGxvdyB1c2Vyc3BhY2UgdG8gdHJhY2sgRE1BLUJVRiB1
c2FnZSBhY3Jvc3MgZGlmZmVyZW50Cj4gPiA+IHByb2Nlc3Nlcy4KPiA+ID4gCj4gPiA+IEN1cnJl
bnRseSwgdGhpcyBpbmZvcm1hdGlvbiBpcyBleHBvc2VkIGluCj4gPiA+IC9zeXMva2VybmVsL2Rl
YnVnL2RtYV9idWYvYnVmaW5mby4KPiA+ID4gSG93ZXZlciwgc2luY2UgZGVidWdmcyBpcyBjb25z
aWRlcmVkIHVuc2FmZSB0byBiZSBtb3VudGVkIGluIHByb2R1Y3Rpb24sCj4gPiA+IGl0IGlzIGJl
aW5nIGR1cGxpY2F0ZWQgaW4gc3lzZnMuCj4gPiAKPiA+IE1obSwgdGhpcyBtYWtlcyBpdCBwYXJ0
IG9mIHRoZSBVQVBJLiBXaGF0IGlzIHRoZSBqdXN0aWZpY2F0aW9uIGZvciB0aGlzPwo+ID4gCj4g
PiBJbiBvdGhlciB3b3JkcyBkbyB3ZSByZWFsbHkgbmVlZCB0aG9zZSBkZWJ1ZyBpbmZvcm1hdGlv
biBpbiBhIHByb2R1Y3Rpb24KPiA+IGVudmlyb25tZW50Pwo+IAo+IFByb2R1Y3Rpb24gZW52aXJv
bm1lbnRzIHNlZW0gdG8gd2FudCB0byBrbm93IHdobyBpcyB1c2luZyB1cCBtZW1vcnkgOikKClRo
aXMgb25seSBzaG93cyBzaGFyZWQgbWVtb3J5LCBzbyBpdCBkb2VzIHNtZWxsIGEgbG90IGxpa2Ug
JHNwZWNpZmljX2lzc3VlCmFuZCB3ZSdyZSBkZXNpZ25pbmcgYSBuYXJyb3cgc29sdXRpb24gZm9y
IHRoYXQgYW5kIHRoZW4gaGF2ZSB0byBjYXJyeSBpdApmb3JldmVyLgoKRS5nLiB3aHkgaXMgdGhl
IGxpc3Qgb2YgYXR0YWNobWVudHMgbm90IGEgc3lzZnMgbGluaz8gVGhhdCdzIGhvdyB3ZQp1c3Vh
bGx5IGV4cG9zZSBzdHJ1Y3QgZGV2aWNlICogcG9pbnRlcnMgaW4gc3lzZnMgdG8gdXNlcnNwYWNl
LCBub3QgYXMgYQpsaXN0IG9mIHRoaW5ncy4KCkZ1cnRoZXJtb3JlIHdlIGRvbid0IGhhdmUgdGhl
IGV4cG9ydGVyIGRldmljZSBjb3ZlcmVkIGFueXdoZXJlLCBob3cgaXMKdGhhdCB0cmFja2VkPyBZ
ZXMgQW5kcm9pZCBqdXN0IHVzZXMgaW9uIGZvciBhbGwgc2hhcmVkIGJ1ZmZlcnMsIGJ1dCB0aGF0
J3MKbm90IGhvdyBhbGwgb2YgbGludXggdXNlcnNwYWNlIHdvcmtzLgoKVGhlbiBJIGd1ZXNzIHRo
ZXJlJ3MgdGhlIG1tYXBzLCB5b3UgY2FuIGZpc2ggdGhlbSBvdXQgb2YgcHJvY2ZzLiBBIHRvb2wK
d2hpY2ggY29sbGVjdHMgYWxsIHRoYXQgaW5mb3JtYXRpb24gbWlnaHQgYmUgdXNlZnVsLCBqdXN0
IGFzIGRlbW9uc3RyYXRpb24Kb2YgaG93IHRoaXMgaXMgYWxsIHN1cHBvc2VkIHRvIGJlIHVzZWQu
CgpGaW5hbGx5IHdlIGhhdmUga2VybmVsIGludGVybmFsIG1hcHBpbmdzIHRvby4gTm90IHRyYWNr
ZWQuCgpUaGVyZSdzIGFsc28gc29tZSB0aGluZ3MgdG8gbWFrZSBzdXJlIHdlJ3JlIGF0IGxlYXN0
IGhhdmluZyB0aG91Z2h0IGFib3V0CmhvdyBvdGhlciB0aGluZ3MgZml0IGluIGhlcmUuIEUuZC4g
ZG1hX3Jlc3YgYXR0YWNoZWQgdG8gdGhlIGRtYS1idWYKbWF0dGVycyBpbiBnZW5lcmFsIGEgbG90
LiBJdCBkb2Vzbid0IG1hdHRlciBvbiBBbmRyb2lkIGJlY2F1c2UKZXZlcnl0aGluZydzIHBpbm5l
ZCBhbGwgdGhlIHRpbWUgYW55d2F5LgoKQWxzbyBJIHRob3VnaHQgc3lzZnMgd2FzIG9uZSB2YWx1
ZSBvbmUgZmlsZSwgZHVtcGluZyBhbiBlbnRpcmUgbGlzdCBpbnRvCmRldl9pbmZvX21hcCB3aXRo
IHByb3BlcnRpZXMgd2UnbGwgbmVlZCB0byBleHRlbmQgKG9uY2UgeW91IGNhcmUgYWJvdXQKZG1h
X3Jlc3YgeW91IGFsc28gd2FudCB0byBrbm93IHdoaWNoIGF0dGFjaG1lbnRzIGFyZSBkeW5hbWlj
KSBkb2VzIG5vdApzbWVsbCBsaWtlIHN5c2ZzIGRlc2lnbiBhdCBhbGwuCgpTbyB5ZWFoLCB3aHk/
IHdvcmtzZm9ybWVvbmFuZHJvaWR3ZW5lZWRpdHRoZXJlIG5vdCBnb29kIGVub3VnaCBmb3IgdWFw
aSBvZgpzb21ldGhpbmcgdGhpcyBjb3JlIHRvIGhvdyB0aGUgZ3B1IHN0YWNrIHdvcmtzIG9uIGxp
bnV4IGluIGdlbmVyYWwsIGF0CmxlYXN0IGltby4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpT
b2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
