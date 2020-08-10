Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D381240669
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Aug 2020 15:07:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC01A665E8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Aug 2020 13:07:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9D0BB665E9; Mon, 10 Aug 2020 13:07:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64D0F665CF;
	Mon, 10 Aug 2020 13:06:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E392C6097F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Aug 2020 13:06:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C83F3619CE; Mon, 10 Aug 2020 13:06:25 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 2B23E6097F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Aug 2020 13:06:24 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id x5so7575731wmi.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Aug 2020 06:06:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=GPx3S/8jhM90DHfD4TRK0ne1wHxOQ88UPQC+FKKE7b4=;
 b=eOaKG7OINDT6jZSmy3IDh2LqxXdaodu2JH1nMSQV064wgRmvVxX+pGPwKqOGUGM/lv
 8x7kv+AS0vAM96xHHgBcj6QevcEzqasaB6jKCLL1TPtaMrZL6C9cTe95Qg8t8V+IfBDb
 ShSBvfaEkhBRqW+drPsSf+utMIBVW4Nvl0rv0l/+IUhoLAK+8zF5NMw6gXTBnZCi8Ks/
 ULA4B+W0DNtGY25yCrethTmmSGtHdLAPY43L28NnX8Fagpsl+zyGEFSw2g0zxmpQolj7
 r0uhzZvkRbjF7z4i9ZXxeq8/OaRutIobE5UKlWG4piTYlXS+gvPNe1+AVhEG2EQykq1T
 PJmw==
X-Gm-Message-State: AOAM532zbS8ZOifo6mcKebrHwILGd9zwdWSi5wOSIKv38ORFXnwSlzdN
 n3ObSWiJdgOZb1jEva2Jr7XgXA==
X-Google-Smtp-Source: ABdhPJyEBEPA21RLrPg4igFyKps9/jMj+ZOxleXUovW4dpHkDIerMq8VNi+ipVYxHqvklkBZYu8Xbw==
X-Received: by 2002:a7b:c954:: with SMTP id i20mr27324020wml.189.1597064783265; 
 Mon, 10 Aug 2020 06:06:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p6sm22227267wmg.0.2020.08.10.06.06.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Aug 2020 06:06:22 -0700 (PDT)
Date: Mon, 10 Aug 2020 15:06:20 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: christian.koenig@amd.com
Message-ID: <20200810130620.GS2352366@phenom.ffwll.local>
Mail-Followup-To: christian.koenig@amd.com,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, linux-doc@vger.kernel.org,
 linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
References: <20200809061739.16803-1-lukas.bulwahn@gmail.com>
 <7d434810-79bd-89a3-18f8-c5c2a2524822@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d434810-79bd-89a3-18f8-c5c2a2524822@gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-doc@vger.kernel.org, linux-rdma@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf.rst: repair length of title
	underline
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

T24gTW9uLCBBdWcgMTAsIDIwMjAgYXQgMDE6MjU6NDBQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAwOS4wOC4yMCB1bSAwODoxNyBzY2hyaWViIEx1a2FzIEJ1bHdhaG46Cj4g
PiBXaXRoIGNvbW1pdCA3MmI2ZWRlNzM2MjMgKCJkbWEtYnVmLnJzdDogRG9jdW1lbnQgd2h5IGlu
ZGVmaW5pdGUgZmVuY2VzIGFyZQo+ID4gYSBiYWQgaWRlYSIpLCBkb2N1bWVudCBnZW5lcmF0aW9u
IHdhcm5zOgo+ID4gCj4gPiAgICBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3Q6
MTgyOiBcCj4gPiAgICBXQVJOSU5HOiBUaXRsZSB1bmRlcmxpbmUgdG9vIHNob3J0Lgo+ID4gCj4g
PiBSZXBhaXIgbGVuZ3RoIG9mIHRpdGxlIHVuZGVybGluZSB0byByZW1vdmUgd2FybmluZy4KPiA+
IAo+ID4gRml4ZXM6IDcyYjZlZGU3MzYyMyAoImRtYS1idWYucnN0OiBEb2N1bWVudCB3aHkgaW5k
ZWZpbml0ZSBmZW5jZXMgYXJlIGEgYmFkIGlkZWEiKQo+ID4gU2lnbmVkLW9mZi1ieTogTHVrYXMg
QnVsd2FobiA8bHVrYXMuYnVsd2FobkBnbWFpbC5jb20+Cj4gCj4gQWNrZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiAKPiBTaG91bGQgSSBwaWNrIGl0
IHVwIGludG8gZHJtLW1pc2MtbmV4dD8KClllcyBwbGVhc2UuIEZvciB0aGUgZnV0dXJlIGlmIHlv
dSBuZWVkIHRvIGNoZWNrIGlmIHNvbWVvbmUgaGFzIGNvbW1pdApyaWdodHMgYW5kIGNhbiBwdXNo
IHRoZW1zZWx2ZXM6CgpodHRwczovL3Blb3BsZS5mcmVlZGVza3RvcC5vcmcvfnNlYW5wYXVsL3do
b21pc2MuaHRtbAoKWWVhaCB3aXRoIGdpdGxhYiB0aGlzIHdvdWxkIGFsbCBiZSBhIGJpdCBtb3Jl
IHJlYXNvbmFibGUsIGJ1dCB3ZSBnZXQgYnkKbWVhbndoaWxlIDotKQoKQ2hlZXJzLCBEYW5pZWwK
PiAKPiA+IC0tLQo+ID4gRGFuaWVsLCBwbGVhc2UgcGljayB0aGlzIG1pbm9yIG5vbi11cmdlbnQg
Zml4IHRvIHlvdXIgbmV3IGRvY3VtZW50YXRpb24uCj4gPiAKPiA+ICAgRG9jdW1lbnRhdGlvbi9k
cml2ZXItYXBpL2RtYS1idWYucnN0IHwgMiArLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdCBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEt
YnVmLnJzdAo+ID4gaW5kZXggMTAwYmZkMjI3MjY1Li4xM2VhMGNjMGEzZmEgMTAwNjQ0Cj4gPiAt
LS0gYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QKPiA+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdAo+ID4gQEAgLTE3OSw3ICsxNzksNyBAQCBE
TUEgRmVuY2UgdUFCSS9TeW5jIEZpbGUKPiA+ICAgICAgOmludGVybmFsOgo+ID4gICBJbmRlZmlu
aXRlIERNQSBGZW5jZXMKPiA+IC1+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ID4gK35+fn5+fn5+fn5+
fn5+fn5+fn5+fgo+ID4gICBBdCB2YXJpb3VzIHRpbWVzICZkbWFfZmVuY2Ugd2l0aCBhbiBpbmRl
ZmluaXRlIHRpbWUgdW50aWwgZG1hX2ZlbmNlX3dhaXQoKQo+ID4gICBmaW5pc2hlcyBoYXZlIGJl
ZW4gcHJvcG9zZWQuIEV4YW1wbGVzIGluY2x1ZGU6Cj4gCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0
d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
