Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FB726C133
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Sep 2020 11:54:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C288B60CB2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Sep 2020 09:54:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B5FBF6663B; Wed, 16 Sep 2020 09:54:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E58B360F5B;
	Wed, 16 Sep 2020 09:54:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0CE0F60C2F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 09:54:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EBE2560F5B; Wed, 16 Sep 2020 09:54:04 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 8903660C2F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 09:54:03 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id l9so2311426wme.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 02:54:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=2iYj6uXZfdILOqgogXly8EZQExVDmJHzJxebCj3FO2Y=;
 b=cYgoSbmojPt6BfBs+tXW5K4pCSUPihouJRI6o9LU9+L609H//QWkGXZrzlEDTIRV/Q
 tTsBRfEMAr1F19KY2hZ1jHms2mnRKreexptvSg0IFpM6cQnSIjTcvQvF0BMy/mbQunni
 3hjqOVIpZReDUB6M9vXgboYNMCYD7AGpxGIvMY7NW8xQV11jb9QNXvTjfSknHJs+1Dxl
 IZzLadUac3t1Jc3fmu1tiKWF35Ww92yVEd2R+2ZskFtuFyU9GtJi3r6ybuWYtvzwuAil
 TmeVMz7+Cs3+QXZ+SctVStYF02KacQGHlWyZBKUDjqtGVkDb2CAf9h+m/PAeqPuLrs9c
 83tA==
X-Gm-Message-State: AOAM531zANVv86TQe/pv+s9s/pznZY4Px5EBkwfGYI5+WtTOFNVUwkdq
 1ogcA8Pkp/QtFMm6yYawnQNBrg==
X-Google-Smtp-Source: ABdhPJx8T8vv6SboEWDzt863SflX4VsUCD5E76qf3ZL+BjSfaIFA4+TQRt4D0/rFrg4RphT0bDAcYQ==
X-Received: by 2002:a1c:7912:: with SMTP id l18mr3807909wme.124.1600250042604; 
 Wed, 16 Sep 2020 02:54:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i83sm4609049wma.22.2020.09.16.02.54.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Sep 2020 02:54:01 -0700 (PDT)
Date: Wed, 16 Sep 2020 11:53:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: christian.koenig@amd.com
Message-ID: <20200916095359.GD438822@phenom.ffwll.local>
Mail-Followup-To: christian.koenig@amd.com, Jason Gunthorpe <jgg@ziepe.ca>,
 akpm@linux-foundation.org, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org
References: <20200914132920.59183-1-christian.koenig@amd.com>
 <40cd26ae-b855-4627-5a13-4dcea5d622f6@gmail.com>
 <20200914140632.GD1221970@ziepe.ca>
 <9302e4e0-0ff0-8b00-ada1-85feefb49e88@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9302e4e0-0ff0-8b00-ada1-85feefb49e88@gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Jason Gunthorpe <jgg@ziepe.ca>, akpm@linux-foundation.org,
 linux-media@vger.kernel.org
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

T24gTW9uLCBTZXAgMTQsIDIwMjAgYXQgMDg6MjY6NDdQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAxNC4wOS4yMCB1bSAxNjowNiBzY2hyaWViIEphc29uIEd1bnRob3JwZToK
PiA+IE9uIE1vbiwgU2VwIDE0LCAyMDIwIGF0IDAzOjMwOjQ3UE0gKzAyMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6Cj4gPiA+IEFtIDE0LjA5LjIwIHVtIDE1OjI5IHNjaHJpZWIgQ2hyaXN0aWFu
IEvDtm5pZzoKPiA+ID4gPiBIaSBBbmRyZXcsCj4gPiA+ID4gCj4gPiA+ID4gSSdtIHRoZSBuZXcg
RE1BLWJ1ZiBtYWludGFpbmVyIGFuZCBEYW5pZWwgYW5kIG90aGVycyBjYW1lIHVwIHdpdGgKPiA+
ID4gPiBwYXRjaGVzIGV4dGVuZGluZyB0aGUgdXNlIG9mIHRoZSBkbWFfYnVmX21tYXAoKSBmdW5j
dGlvbi4KPiA+ID4gPiAKPiA+ID4gPiBOb3cgdGhpcyBmdW5jdGlvbiBpcyBkb2luZyBzb21ldGhp
bmcgYSBiaXQgb2RkIGJ5IGNoYW5naW5nIHRoZQo+ID4gPiA+IHZtYS0+dm1fZmlsZSB3aGlsZSBp
bnN0YWxsaW5nIGEgVk1BIGluIHRoZSBtbWFwKCkgc3lzdGVtIGNhbGwKPiA+IEl0IGRvZXNuJ3Qg
bG9vayBvYnZpb3VzbHkgc2FmZSBhcyBtbWFwX3JlZ2lvbigpIGhhcyBhbiBpbnRlcmVzdGluZyBt
aXgKPiA+IG9mIGZpbGUgYW5kIHZtYS0+ZmlsZQo+ID4gCj4gPiBFZyBpdCBjYWxscyBtYXBwaW5n
X3VubWFwX3dyaXRhYmxlKCkgdXNpbmcgYm90aCByb3V0ZXMKPiAKPiBUaGFua3MgZm9yIHRoZSBo
aW50LCBnb2luZyB0byB0YWtlIGEgbG9vayBhdCB0aGF0IGNvZGUgdG9tb3Jyb3cuCj4gCj4gPiBX
aGF0IGFib3V0IHNlY3VyaXR5PyBJcyBpdCBPSyB0aGF0IHNvbWUgb3RoZXIgcmFuZG9tIGZpbGUs
IG1heWJlIGluCj4gPiBhbm90aGVyIHByb2Nlc3MsIGlzIGJlaW5nIGxpbmtlZCB0byB0aGlzIG1t
YXA/Cj4gCj4gR29vZCBxdWVzdGlvbiwgSSBoYXZlIG5vIGlkZWEuIFRoYXQncyB3aHkgSSBzZW5k
IG91dCB0aGlzIG1haWwuCj4gCj4gPiA+ID4gVGhlIGJhY2tncm91bmQgaGVyZSBpcyB0aGF0IERN
QS1idWYgYWxsb3dzIGRldmljZSBkcml2ZXJzIHRvCj4gPiA+ID4gZXhwb3J0IGJ1ZmZlciB3aGlj
aCBhcmUgdGhlbiBpbXBvcnRlZCBpbnRvIGFub3RoZXIgZGV2aWNlCj4gPiA+ID4gZHJpdmVyLiBU
aGUgbW1hcCgpIGhhbmRsZXIgb2YgdGhlIGltcG9ydGluZyBkZXZpY2UgZHJpdmVyIHRoZW4KPiA+
ID4gPiBmaW5kIHRoYXQgdGhlIHBnb2ZmIGJlbG9uZ3MgdG8gdGhlIGV4cG9ydGluZyBkZXZpY2Ug
YW5kIHNvCj4gPiA+ID4gcmVkaXJlY3RzIHRoZSBtbWFwKCkgY2FsbCB0aGVyZS4KPiA+IFNvIHRo
ZSBwZ29mZiBpcyBzb21lIHZpcnR1YWxpemVkIHRoaW5nPwo+IAo+IFllcywgYWJzb2x1dGVseS4K
Ck1heWJlIG5vdGNoIG1vcmUgY29udGV4dC4gQ29uY2VwdHVhbGx5IHRoZSBidWZmZXIgb2JqZWN0
cyB3ZSB1c2UgdG8gbWFuYWdlCmdwdSBtZW1vcnkgYXJlIGFsbCBzdGFuZC1hbG9uZSBvYmplY3Rz
LCBpbnRlcm5hbGx5IHJlZmNvdW50ZWQgYW5kCmV2ZXJ5dGhpbmcuIEFuZCBpZiB5b3UgZXhwb3J0
IHRoZW0gYXMgYSBkbWEtYnVmLCB0aGVuIHRoZXkgYXJlIGluZGVlZApzdGFuZC1hbG9uZSBmaWxl
IGRlc2NyaXB0b3JzIGxpa2UgYW55IG90aGVyLgoKQnV0IHdpdGhpbiB0aGUgZHJpdmVyLCB3ZSBn
ZW5lcmFsbHkgbmVlZCB0aG91c2FuZHMgb2YgdGhlc2UsIGFuZCB0aGF0CnRlbmRzIHRvIGJyaW5n
IGZkIGV4aGF1c3Rpb24gcHJvYmxlbXMgd2l0aCBpdC4gVGhhdCdzIHdoeSBhbGwgdGhlIHByaXZh
dGUKYnVmZmVyIG9iamVjdHMgd2hpY2ggYXJlbid0IHNoYXJlZCB3aXRoIG90aGVyIHByb2Nlc3Mg
b3Igb3RoZXIgZHJpdmVycyBhcmUKaGFuZGxlcyBvbmx5IHZhbGlkIGZvciBhIHNwZWNpZmljIGZk
IGluc3RhbmNlIG9mIHRoZSBkcm0gY2hhcmRldiAoZWFjaApvcGVuIGdldHMgdGhlaXIgb3duIG5h
bWVzcGFjZSksIGFuZCBvbmx5IGZvciBpb2N0bHMgZG9uZSBvbiB0aGF0IGNoYXJkZXYuCkFuZCBm
b3IgbW1hcCB3ZSBhc3NpZ24gZmFrZSAoYnV0IHVuaXF1ZSBhY3Jvc3MgYWxsIG9wZW4gZmQgb24g
aXQpIG9mZnNldHMKd2l0aGluIHRoZSBvdmVyYWxsIGNoYXJkZXYuIEhlbmNlIGFsbCB0aGUgcGdv
ZmYgbWFuZ2xpbmcgYW5kIHJlLW1hbmdsaW5nLgoKTm93IGZvciB1bm1hcF9tYXBwaW5nX3Jhbmdl
IHdlJ2QgbGlrZSBpdCB0byBmaW5kIGFsbCBzdWNoIGZha2Ugb2Zmc2V0CmFsaWFzZXMgcG9pbnRp
bmcgYXQgdGhlIG9uZSB1bmRlcmx5aW5nIGJ1ZmZlciBvYmplY3Q6Ci0gbW1hcCBvbiB0aGUgZG1h
LWJ1ZiBmZCwgYXQgb2Zmc2V0IDAKLSBtbWFwIG9uIHRoZSBkcm0gY2hhcmRldiB3aGVyZSB0aGUg
YnVmZmVyIHdhcyBvcmlnaW5hbGx5IGFsbG9jYXRlZCwgYXQgc29tZSB1bmlxdWUgb2Zmc2V0Ci0g
bW1hcCBvbiB0aGUgZHJtIGNoYXJkZXYgd2hlcmUgdGhlIGJ1ZmZlciB3YXMgaW1wb3J0ZWQsIGFn
YWluIGF0IHNvbWUKICAobGlrZWx5KSBkaWZmZXJlbnQgdW5pcXVlIChmb3IgdGhhdCBjaGFyZGV2
KSBvZmZzZXQuCgpTbyB0byBtYWtlIHVubWFwX21hcHBpbmdfcmFuZ2Ugd29yayBhY3Jvc3MgdGhl
IGVudGlyZSBkZWxlZ2F0aW9uIGNoYW5nZQp3ZSdkIGFjdHVhbGx5IG5lZWQgdG8gY2hhbmdlIHRo
ZSB2bWEtPnZtYV9maWxlIGFuZCBwZ29mZiB0d2ljZToKLSBvbmNlIHdoZW4gZm9yd2FyZGluZyBm
cm9tIHRoZSBpbXBvcnRpbmcgZHJtIGNoYXJkZXYgdG8gdGhlIGRtYS1idWYKLSBvbmNlIHdoZW4g
Zm9yd2FyZGluZyBmcm9tIHRoZSBkbWEtYnVmIHRvIHRoZSBleHBvcnRlZCBkcm0gY2hhcmRldiBm
YWtlCiAgb2Zmc2V0LCB3aGljaCAobW9zdGx5IGZvciBoaXN0b3JpY2FsIHJlYXNvbnMpIGlzIGNv
bnNpZGVyZWQgdGhlCiAgY2Fub25pY2FsIGZha2Ugb2Zmc2V0CgpXZSBjYW4ndCByZWFsbHkgZG8g
dGhlIGRlbGVnYXRpb24gaW4gdXNlcnNwYWNlIGJlY2F1c2U6Ci0gdGhlIGltcG9ydGVyIG1pZ2h0
IG5vdCBoYXZlIGFjY2VzcyB0byB0aGUgZXhwb3J0ZXJzIGRybSBjaGFyZGV2LCBpdCBvbmx5CiAg
Z2V0cyB0aGUgZG1hLWJ1Zi4gSWYgd2UnZCBnaXZlIGl0IHRoZSB1bmRlcmx5aW5nIGRybSBjaGFy
ZGV2IGl0IGNvdWxkIGRvCiAgc3R1ZmYgbGlrZSBpc3N1ZSByZW5kZXJpbmcgY29tbWFuZHMsIGJy
ZWFraW5nIHRoZSBhY2Nlc3MgbW9kZWwuCi0gdGhlIGRtYS1idWYgZmQgaXMgb25seSB1c2VkIHRv
IGVzdGFibGlzaCB0aGUgc2hhcmluZywgb25jZSBpdCdzIGltcG9ydGVkCiAgZXZlcnl3aGVyZSBp
dCBnZW5lcmFsbHkgZ2V0cyBjbG9zZWQuIFVzZXJzcGFjZSBjb3VsZCByZS1leHBvcnQgaXQgYW5k
CiAgdGhlbiBjYWxsIG1tYXAgb24gdGhhdCwgYnV0IGZlZWxzIGEgYml0IGNvbnRyaXZlZC4KLSBl
c3BlY2lhbGx5IG9uIFNvQyBwbGF0Zm9ybXMgdGhpcyBoYXMgYWxyZWFkeSBiZWNvbWUgdWFwaS4g
SXQncyBub3QgYSBiaWcKICBwcm9ibGVtIGJlY2F1c2UgdGhlIGRyaXZlcnMgdGhhdCByZWFsbHkg
bmVlZCB1bm1hcF9tYXBwaW5nX3JhbmdlIHRvIHdvcmsKICBhcmUgdGhlIGJpZyBncHUgZHJpdmVy
cyB3aXRoIGRpc2NyZXRlIHZyYW0sIHdoZXJlIG1hcHBpbmdzIG5lZWQgdG8gYmUKICBpbnZhbGlk
YXRlIHdoZW4gbW92aW5nIGJ1ZmZlciBvYmplY3RzIGluL291dCBvZiB2cmFtLgoKSGVuY2Ugd2h5
IHdlJ2QgbGlrZSB0byBiZSBhYmxlIHRvIGZvcndhcmQgYWxpYXNpbmcgbWFwcGluZ3MgYW5kIGFk
anVzdCB0aGUKZmlsZSBhbmQgcGdvZmYsIHdoaWxlIGhvcGVmdWxseSBldmVyeXRoaW5nIGtlZXBz
IHdvcmtpbmcuIEkgdGhvdWdodCB0aGlzCndvdWxkIHdvcmssIGJ1dCBDaHJpc3RpYW4gbm90aWNl
ZCBpdCBkb2Vzbid0IHJlYWxseS4KCkNoZWVycywgRGFuaWVsCgoKPiAKPiBDaHJpc3RpYW4uCj4g
Cj4gPiAKPiA+IEphc29uCj4gCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwg
SW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
