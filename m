Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F3A1CF517
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 14:57:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 093C261725
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 12:57:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EFA6A619D6; Tue, 12 May 2020 12:57:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BBDD619AC;
	Tue, 12 May 2020 12:57:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DF6A06038A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 12:57:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D01F6619AC; Tue, 12 May 2020 12:57:13 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 8CBAE6038A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 12:57:12 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id e26so21626303wmk.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 05:57:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=YLwPnbDauSfAWxQ+40E6XOuXjM5jTgn5iCgXAVP6tHM=;
 b=UXzlqdvxtg62Y1+zgNpx1VerqgqDV+YCQAu0jYAxyAqa4VPTkzcsgLDOHa+PucTFmR
 9Ivezk8jz4nqoThAOC2mlCqApLSslfabNlAVZV12vkEdNKfgv5D6glzpV4nVXxmqbI4m
 yYfbX1Tr2FBGKexTmlNTHspZTfJzQS6On+qMlHA0MgY0VpTWzTWcfFxeaHk2vR4UUAsi
 ss+ILCAsGn6pv5NsGjW80ovEoeQHUNnEyAbVxeQToZmhZxmMVCVEX6TINW5sCoLimu+l
 9wFvQUhxw2y1mKgzH+NkNUsk3/NPLOZeP+cr2a08IrRR32kGvIjPFt3z2AShUDHhibY7
 VLAg==
X-Gm-Message-State: AGi0PuZOSaiuvAmS6ch91nRTxG7R/5fuE3iu4LEJdOnSyEFyM0sVwyF/
 GNEKyD/QbtP31fZsP6MqRMW6Tw==
X-Google-Smtp-Source: APiQypJPVhngnqNHLopAtRaOF+m2sBFi2Xz4I59IV6FcrkZnjpcKLb8O72XuWRPFprkKUYDNGgj6Nw==
X-Received: by 2002:a7b:c5c7:: with SMTP id n7mr27041116wmk.18.1589288231721; 
 Tue, 12 May 2020 05:57:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 32sm23035619wrg.19.2020.05.12.05.57.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 05:57:10 -0700 (PDT)
Date: Tue, 12 May 2020 14:57:08 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20200512125708.GG206103@phenom.ffwll.local>
Mail-Followup-To: Jason Gunthorpe <jgg@ziepe.ca>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, linux-rdma@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
 <20200512085944.222637-3-daniel.vetter@ffwll.ch>
 <20200512120952.GG26002@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512120952.GG26002@ziepe.ca>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [RFC 02/17] dma-fence: basic lockdep annotations
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

T24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgMDk6MDk6NTJBTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIFR1ZSwgTWF5IDEyLCAyMDIwIGF0IDEwOjU5OjI5QU0gKzAyMDAsIERhbmll
bCBWZXR0ZXIgd3JvdGU6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCj4gPiBpbmRleCA2ODAyMTI1MzQ5ZmIu
LmQ1YzBmZDJlZmM3MCAxMDA2NDQKPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
Ywo+ID4gQEAgLTExMCw2ICsxMTAsNTIgQEAgdTY0IGRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKHVu
c2lnbmVkIG51bSkKPiA+ICB9Cj4gPiAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfY29udGV4dF9h
bGxvYyk7Cj4gPiAgCj4gPiArI2lmZGVmIENPTkZJR19MT0NLREVQCj4gPiArc3RydWN0IGxvY2tk
ZXBfbWFwCWRtYV9mZW5jZV9sb2NrZGVwX21hcCA9IHsKPiA+ICsJLm5hbWUgPSAiZG1hX2ZlbmNl
X21hcCIKPiA+ICt9Owo+ID4gKwo+ID4gK2Jvb2wgZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmco
dm9pZCkKPiA+ICt7Cj4gCj4gV2h5IGlzIHRoaXMgZ2xvYmFsPyBJIHdvdWxkIGhhdmUgZXhwZWN0
ZWQgaXQgdG8gYmUgY29ubmVjdGVkIHRvIGEKPiBzaW5nbGUgZmVuY2U/CgpJdCdzIHRoZSBzYW1l
IHJ1bGVzIGZvciBhbGwgZmVuY2VzLCBzaW5jZSB0aGV5IGNhbiBiZSBzaGFyZWQgYWNyb3NzCmRy
aXZlcnMgaW4gdmFyaW91cyB3YXlzLiBMb2NrZGVwIHVzdWFsbHkgYWNoaWV2ZXMgdGhhdCB3aXRo
IGEgc3RhdGljCnZhcmlhYmxlIGhpZGRlbiBpbiB0aGUgbWFjcm8sIGJ1dCB0aGF0IGRvZXNuJ3Qg
d29yayBpZiB5b3UgaGF2ZSBsb3RzIG9mCmRpZmZlcmVudCB3YXlzIGZyb20gZGlmZmVyZW50IGRy
aXZlcnMgdG8gY3JlYXRlIGEgZG1hX2ZlbmNlLiBIZW5jZSB0aGUKdW5pcXVlIGdsb2JhbCBvbmUg
dGhhdCB3ZSBleHBsaWNpdGx5IGFsbG9jYXRlLgoKV2UgaGF2ZSBzaW1pbGFyIHN0dWZmIGZvciB0
aGUgZ2xvYmFsIGRtYV9yZXN2X2xvY2sgd3dfbXV0ZXggY2xhc3MsIGp1c3QKdGhlcmUgaXQncyBh
IGJpdCBtb3JlIHN0YW5kYXJkaXplZCBhbmQgaGlkZGVuIGJlaGluZCBhIG5lYXQgbWFjcm8uIEJ1
dApyZWFsbHkgbG9ja2RlcCBuZWVkcyBnbG9iYWwgbG9ja2RlcF9tYXBzIG9yIGl0IGRvZXNuJ3Qg
d29yay4KCj4gSXQgd291bGQgYWxzbyBiZSBhbG90IG5pY2VyIGlmIHRoaXMgd2FzIHNvbWUgZ2Vu
ZXJhbCBsb2NrZGVwIGZlYXR1cmUsCj4gbm90IHRpZWQgdG8gZG1hYnVmLiBUaGlzIGV4YWN0IHBy
b2JsZW0gYWxzbyBzdHJpa2VzIGFueW9uZSB1c2luZwo+IGNvbXBsZXRpb25zLCBmb3IgaW5zdGFu
Y2UsIGFuZCB0aGUgc2FtZSBzb2x1dGlvbiBzaG91bGQgYmUKPiBhcHBsaWNhYmxlPz8KClRoZXJl
IHdhczoKCmh0dHBzOi8vbHduLm5ldC9BcnRpY2xlcy83MDk4NDkvCgpJdCBldmVuIGdvdCBtZXJn
ZWQsIGFuZCBzZWVtcyB0byBoYXZlIHdvcmtlZC4gVW5mb3J0dW5hdGVseSAoYW5kIEknbSBub3QK
ZW50aXJlbHkgY2xlYXIgb24gdGhlIHJlYXNvbnMpIGl0IHdhcyB0aHJvd24gb3V0IGFnYWluLCBz
byB3ZSBjYW4ndCB1c2UKaXQuIFRoYXQgbWVhbnMgd2FpdF9ldmVudC93YWtlX3VwIGRlcGVuZGVu
Y2llcyBuZWVkIHRvIGJlIG1hbnVhbGx5CmFubm90YXRlZCwgbGlrZSBlLmcuIGZsdXNoX3dvcmso
KSBhbHJlYWR5IGlzLiBmbHVzaF93b3JrIGlzIG1vcmUgb3IgbGVzcwp3aGVyZSBJJ3ZlIHN0b2xl
biB0aGlzIGlkZWEgZnJvbSwgd2l0aCBzb21lIGFkanVzdGVtZW50cyBhbmQgdHJpY2tzIG9uIHRv
cAp0byBtYWtlIGl0IHdvcmsgZm9yIGRtYV9mZW5jZSB1c2Vycy4KCkNoZWVycywgRGFuaWVsCi0t
IApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRw
Oi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
