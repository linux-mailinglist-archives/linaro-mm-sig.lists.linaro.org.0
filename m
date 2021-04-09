Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D345635A178
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Apr 2021 16:49:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B4CF60ECA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Apr 2021 14:49:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6C75061868; Fri,  9 Apr 2021 14:49:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2C2061951;
	Fri,  9 Apr 2021 14:48:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8BE6561900
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Apr 2021 14:48:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7C43361951; Fri,  9 Apr 2021 14:48:21 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 by lists.linaro.org (Postfix) with ESMTPS id 56FB16196D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Apr 2021 14:47:30 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id
 s16-20020a0568301490b02901b83efc84a0so5867970otq.10
 for <linaro-mm-sig@lists.linaro.org>; Fri, 09 Apr 2021 07:47:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0V92N7vT+lUzz87n7KGp059iqscBjCvjd5Xj1nP3DBU=;
 b=lmdrz8GypmLY41+5uYeXiEbC+UnUXdIoWi+XZILwYnJxtXEi+Lil/BK5IVJxQkWXsO
 Ng9ZccN0Esb6hcKyz7RtU8HCY0yIHqDCoSzHFL8Zjp1M+qnUxgvZRJHUEAnXExchOA5q
 m6ZfeHiJ15dvngMZH01XK5gADqTwBHn6O1ovceQjN5FxPHT7OrPgDr/Wul6hIyKO1X74
 qS0szvIaHRbaL7fSzl+V6FI36JRHpHz1HROzCXnfkwTxfOppwcb6pfHSkWtzc+1h4f0d
 swp5d+pTt/aq+S+87dL0+raHWSh1nmW1C4cqHsh6JUgfoqK+dpJVDLfF1bCMg63qob/w
 qbYg==
X-Gm-Message-State: AOAM532yf7JjS+at2u1angPMapHwavrLDZEGQTdzc9Pujze8m5MRmHr7
 kP7OMTmWGD4pCl0MO9wMvg==
X-Google-Smtp-Source: ABdhPJwjLJtZpPVjegVIRtRAIAj7Yv/lPl9U6lNLwRC20v8gG3z0aPUD0nr+q7SaxuV4ssyS7h6YVQ==
X-Received: by 2002:a9d:7699:: with SMTP id j25mr12569409otl.177.1617979649690; 
 Fri, 09 Apr 2021 07:47:29 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s131sm553775oib.14.2021.04.09.07.47.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Apr 2021 07:47:29 -0700 (PDT)
Received: (nullmailer pid 3627857 invoked by uid 1000);
 Fri, 09 Apr 2021 14:47:27 -0000
Date: Fri, 9 Apr 2021 09:47:27 -0500
From: Rob Herring <robh@kernel.org>
To: Nava kishore Manne <nava.manne@xilinx.com>
Message-ID: <20210409144727.GA3625530@robh.at.kernel.org>
References: <20210402090933.32276-1-nava.manne@xilinx.com>
 <20210402090933.32276-2-nava.manne@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210402090933.32276-2-nava.manne@xilinx.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, git@xilinx.com, trix@redhat.com,
 linux-fpga@vger.kernel.org, michal.simek@xilinx.com,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 mdf@kernel.org, linux-arm-kernel@lists.infradead.org, christian.koenig@amd.com,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH RFC 1/3] fpga: region: Add fpga-region
 property 'fpga-config-from-dmabuf'
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

T24gRnJpLCBBcHIgMDIsIDIwMjEgYXQgMDI6Mzk6MzFQTSArMDUzMCwgTmF2YSBraXNob3JlIE1h
bm5lIHdyb3RlOgo+IEFkZCAiZnBnYS1jb25maWctZnJvbS1kbWFidWYiIHByb3BlcnR5IHRvIGFs
bG93IHRoZSBiaXRzdHJlYW0KPiBjb25maWd1cmF0aW9uIGZyb20gcHJlLWFsbG9jYXRlZCBkbWEt
YnVmZmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5hdmEga2lzaG9yZSBNYW5uZSA8bmF2YS5tYW5u
ZUB4aWxpbnguY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
ZnBnYS9mcGdhLXJlZ2lvbi50eHQgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2ZwZ2EvZnBnYS1yZWdpb24udHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2ZwZ2EvZnBnYS1yZWdpb24udHh0Cj4gaW5kZXggOTY5Y2E1M2JiNjVlLi5jNTczY2YyNThkNjAg
MTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ZwZ2EvZnBn
YS1yZWdpb24udHh0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Zw
Z2EvZnBnYS1yZWdpb24udHh0Cj4gQEAgLTE3Nyw2ICsxNzcsOCBAQCBPcHRpb25hbCBwcm9wZXJ0
aWVzOgo+ICAJaXQgaW5kaWNhdGVzIHRoYXQgdGhlIEZQR0EgaGFzIGFscmVhZHkgYmVlbiBwcm9n
cmFtbWVkIHdpdGggdGhpcyBpbWFnZS4KPiAgCUlmIHRoaXMgcHJvcGVydHkgaXMgaW4gYW4gb3Zl
cmxheSB0YXJnZXRpbmcgYSBGUEdBIHJlZ2lvbiwgaXQgaXMgYQo+ICAJcmVxdWVzdCB0byBwcm9n
cmFtIHRoZSBGUEdBIHdpdGggdGhhdCBpbWFnZS4KPiArLSBmcGdhLWNvbmZpZy1mcm9tLWRtYWJ1
ZiA6IGJvb2xlYW4sIHNldCBpZiB0aGUgRlBHQSBjb25maWd1cmVkIGRvbmUgZnJvbSB0aGUKPiAr
CXByZS1hbGxvY2F0ZWQgZG1hLWJ1ZmZlci4KClNvdW5kcyBsaWtlIGFuIGltcGxlbWVudGF0aW9u
IGRldGFpbCBvZiB0aGUgT1MuIERvZXNuJ3QgYmVsb25nIGluIERULgoKUm9iCgo+ICAtIGZwZ2Et
YnJpZGdlcyA6IHNob3VsZCBjb250YWluIGEgbGlzdCBvZiBwaGFuZGxlcyB0byBGUEdBIEJyaWRn
ZXMgdGhhdCBtdXN0IGJlCj4gIAljb250cm9sbGVkIGR1cmluZyBGUEdBIHByb2dyYW1taW5nIGFs
b25nIHdpdGggdGhlIHBhcmVudCBGUEdBIGJyaWRnZS4KPiAgCVRoaXMgcHJvcGVydHkgaXMgb3B0
aW9uYWwgaWYgdGhlIEZQR0EgTWFuYWdlciBoYW5kbGVzIHRoZSBicmlkZ2VzLgo+IC0tIAo+IDIu
MTguMAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
