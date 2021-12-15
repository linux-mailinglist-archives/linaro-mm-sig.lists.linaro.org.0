Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D75474760EC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Dec 2021 19:42:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4215260A79
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Dec 2021 18:42:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BCBC662D22; Wed, 15 Dec 2021 18:42:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 629EE60B99;
	Wed, 15 Dec 2021 18:42:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4E7EE60A79
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Dec 2021 18:42:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 43D5960B99; Wed, 15 Dec 2021 18:42:37 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 by lists.linaro.org (Postfix) with ESMTPS id 3597E60A79
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Dec 2021 18:42:35 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id bj13so32942522oib.4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Dec 2021 10:42:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=3OtsKeW4PGTLYhUwIW/0xDZ0rCoZLq4u4StGZiPBa7E=;
 b=uDSMRUqEUi+Gry5UCapqZMTogRKhCJOROhpCFr1g5kQA1Xw78O4LSlTVHZKvzOqqKK
 uHYvKNzsEdh7SCFGfctU5YPIR/SwHZTqmDRC/aN0DjMSqkbZjKl6umbkeurTey1W3x+n
 tRReUmbeWZOwhCfVe4MrQYRfN02D8MZU0QphNZ65bfTqkSyUB9ztKmA9v0SRuMF6h4au
 wAzD4+wQCi3Fke0oPtytNxrzmDL0JMYhVlgfg1B9Gi965pGIgxxbrlL1PKvm5VSV/ybB
 SlYL0sB6g2DFFvXVWF6+Dhz+tSBHJHnzAVD4SquYiavurDZC/WLfTMNBX2Wc85sYDu8S
 WMZA==
X-Gm-Message-State: AOAM53028kuC+WzP/ZBNfEqvVO+O4c73eShRr6jLWUduz6S1xZeAuBb4
 c35oydsaTIZLl2qd550EWA==
X-Google-Smtp-Source: ABdhPJx1sPX5taOobDhPw0965b4z+Q5nH2DK3vahPxmFwzz1WnIT0pXUH6ue1ficuD1LEggwFjRtjw==
X-Received: by 2002:a05:6808:114f:: with SMTP id
 u15mr1117524oiu.74.1639593754429; 
 Wed, 15 Dec 2021 10:42:34 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id v12sm571493ote.9.2021.12.15.10.42.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 10:42:33 -0800 (PST)
Received: (nullmailer pid 1622209 invoked by uid 1000);
 Wed, 15 Dec 2021 18:42:32 -0000
Date: Wed, 15 Dec 2021 12:42:32 -0600
From: Rob Herring <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Message-ID: <Ybo3GNYSZ9HLIwqj@robh.at.kernel.org>
References: <1639062321-18840-1-git-send-email-akhilrajeev@nvidia.com>
 <e3deea6a-3854-e58c-0d27-602413f2a496@gmail.com>
 <YbMWPGMcHEQXGkHf@orome>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YbMWPGMcHEQXGkHf@orome>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 0/2] Add SMBus features to Tegra I2C
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Akhil R <akhilrajeev@nvidia.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 jonathanh@nvidia.com, linaro-mm-sig@lists.linaro.org,
 andy.shevchenko@gmail.com, ldewangan@nvidia.com, linux-i2c@vger.kernel.org,
 p.zabel@pengutronix.de, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, christian.koenig@amd.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gRnJpLCBEZWMgMTAsIDIwMjEgYXQgMDk6NTY6MjhBTSArMDEwMCwgVGhpZXJyeSBSZWRpbmcg
d3JvdGU6Cj4gT24gVGh1LCBEZWMgMDksIDIwMjEgYXQgMDc6MDQ6MzBQTSArMDMwMCwgRG1pdHJ5
IE9zaXBlbmtvIHdyb3RlOgo+ID4gMDkuMTIuMjAyMSAxODowNSwgQWtoaWwgUiDQv9C40YjQtdGC
Ogo+ID4gPiBBZGQgc3VwcG9ydCBmb3IgU01CdXMgQWxlcnQgYW5kIFNNQnVzIGJsb2NrIHJlYWQg
ZnVuY3Rpb25zIHRvCj4gPiA+IGkyYy10ZWdyYSBkcml2ZXIKPiA+ID4gCj4gPiA+IEFraGlsIFIg
KDIpOgo+ID4gPiAgIGR0LWJpbmRpbmdzOiBpMmM6IHRlZ3JhOiBBZGQgU01CdXMgZmVhdHVyZSBw
cm9wZXJ0aWVzCj4gPiA+ICAgaTJjOiB0ZWdyYTogQWRkIFNNQnVzIGJsb2NrIHJlYWQgYW5kIFNN
QnVzIGFsZXJ0IGZ1bmN0aW9ucwo+ID4gPiAKPiA+ID4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2kyYy9udmlkaWEsdGVncmEyMC1pMmMudHh0IHwgIDQgKysKPiA+ID4gIGRyaXZlcnMvaTJjL2J1
c3Nlcy9pMmMtdGVncmEuYyAgICAgICAgICAgICAgICAgICAgIHwgNTQgKysrKysrKysrKysrKysr
KysrKysrLQo+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4gPiA+IAo+ID4gCj4gPiBIb3cgdGhpcyB3YXMgdGVzdGVkPyBUaGlzIHNlcmllcyBt
dXN0IGluY2x1ZGUgdGhlIERUIHBhdGNoLiBJZiB0aGVyZSBpcwo+ID4gbm8gcmVhbCB1c2VyIGlu
IHVwc3RyZWFtIGZvciB0aGlzIGZlYXR1cmUsIHRoZW4gSSBkb24ndCB0aGluayB0aGF0IHdlCj4g
PiBzaG91bGQgYm90aGVyIGF0IGFsbCBhYm91dCBpdC4KPiAKPiBUaGlzIGlzIHByaW1hcmlseSB1
c2VkIGJ5IGEgZGV2aWNlIHRoYXQgdXNlcyBBQ1BJIGFuZCB0aGUgZHJpdmVyIHVzZXMKPiB0aGUg
ZmlybXdhcmUtYWdub3N0aWMgQVBJcyB0byBnZXQgYXQgdGhpcy4gSG93ZXZlciwgaXQgYWxzbyBt
ZWFucyB0aGF0Cj4gdGhlIGRyaXZlciBlZmZlY3RpdmVseSBwcm92aWRlcyB0aGlzIHNhbWUgc3Vw
cG9ydCBmb3IgRFQgdmlhIHRob3NlIEFQSXMKPiBhbmQgdGhlcmVmb3JlIGl0IG1ha2VzIHNlbnNl
IHRvIGRvY3VtZW50IHRoYXQgcGFydCBldmVuIGlmIHRoZXJlIGFyZSBubwo+IGN1cnJlbnQgdXNl
cnMgb2YgdGhlIERUIGJpdHMuCgpUaGVuIGRlZmluaXRlbHkgYSBOQUsuCgo+IE9uZSBiaWcgYWR2
YW50YWdlIG9mIHRoaXMgaXMgdGhhdCBpdCBoZWxwcyBrZWVwIHRoZSBBQ1BJIGFuZCBEVCBiaW5k
aW5ncwo+IGluIHN5bmMsIGFuZCBkb2N1bWVudCB0aGlzIG9uIHRoZSBEVCBzaWRlIGFsc28gYWxs
b3dzIHVzIHRvIGRvY3VtZW50IHRoZQo+IEFDUEkgc2lkZSBvZiB0aGluZ3Mgd2hlcmUgbm8gZm9y
bWFsIGRvY3VtZW50YXRpb24gZXhpc3RzLCBhcyBmYXIgYXMgSQo+IGtub3cuCgpJIGhhdmUgbm8g
YmFuZHdpZHRoIHRvIHJldmlldyBBQ1BJIGJpbmRpbmdzIGFuZCBkb24ndCB0aGluayB0aGUgd2hv
bGUgCnVzZSBEVCBiaW5kaW5ncyBpbiBBQ1BJIGlzIGEgZ29vZCBpZGVhIGVpdGhlci4gSWYgc29t
ZW9uZSB3YW50cyB0aGlzIHRvIApiZSBhIHRoaW5nLCB0aGVuIHRoZXkgbmVlZCB0byBzdGVwIHVw
IGFuZCByZXZpZXcgYmluZGluZ3MuCgpSb2IKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
