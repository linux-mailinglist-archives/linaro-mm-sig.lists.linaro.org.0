Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D89A2B867E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Nov 2020 22:22:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96922666EA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Nov 2020 21:22:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 87C59666ED; Wed, 18 Nov 2020 21:22:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF3D666596;
	Wed, 18 Nov 2020 21:21:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A2FB860F23
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Nov 2020 21:21:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 900B066596; Wed, 18 Nov 2020 21:21:37 +0000 (UTC)
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by lists.linaro.org (Postfix) with ESMTPS id 5607760F23
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Nov 2020 21:21:36 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id o25so3873291oie.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Nov 2020 13:21:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ss0uXL2h5hvFP3EZBj3yPcEtBcUi82HRGtXChv/G4cE=;
 b=mnBQex4jvjbqMtb7DPSxU74JPoqg+Nim3cyhk/kqdw7+6RXVM+ijFd0UGgfom6OMlq
 MOgvcUZGYbgtl5LotYhTg29YI/3M1dHOS8LyZa/DJtH2dEjCc+srnt/iTbzN0q3VLH7V
 L69SQbK+WFUR9Bomtbu/FyUwqPubeinII01duqpJoQOs7ozbNMHRkOyZ/CfSAfuuidbL
 mzWDwDKQMBCN/vuyT1jCzWOGzbOWNqJFc/yPla9fuA9HNpC8zJwcwpLyiDavGHcazvUO
 trTAse1aaKdHCZMICJ9QEY/eC7CWKys9oBKw3KOJR5uR8DhH4rqDzHJ5g1LhG+32r1Pl
 Jn6g==
X-Gm-Message-State: AOAM530Y6N/Lswa0ChpcBqC453UEzIZVi9tCvXTqKBTDsuzEj6BfrE27
 9MIV3PbddkeuYorCDZdwOQ==
X-Google-Smtp-Source: ABdhPJxxTBYvftWskecODoDjJ4ukv9OAObOfUYCvBisilnIt0kN6iy3jVW5cH+JoiiwCQRORHbp4sg==
X-Received: by 2002:aca:ba42:: with SMTP id k63mr706654oif.111.1605734495634; 
 Wed, 18 Nov 2020 13:21:35 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y18sm6915392ooj.20.2020.11.18.13.21.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Nov 2020 13:21:34 -0800 (PST)
Received: (nullmailer pid 1836565 invoked by uid 1000);
 Wed, 18 Nov 2020 21:21:33 -0000
Date: Wed, 18 Nov 2020 15:21:33 -0600
From: Rob Herring <robh@kernel.org>
To: Wendy Liang <wendy.liang@xilinx.com>
Message-ID: <20201118212133.GA1836326@bogus>
References: <1605686780-17886-1-git-send-email-wendy.liang@xilinx.com>
 <1605686780-17886-2-git-send-email-wendy.liang@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1605686780-17886-2-git-send-email-wendy.liang@xilinx.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: tejas.patel@xilinx.com, devicetree@vger.kernel.org, michal.simek@xilinx.com,
 rajan.vaja@xilinx.com, arnd@arndb.de, gregkh@linuxfoundation.org,
 dragan.cvetic@xilinx.com, ravi.patel@xilinx.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, christian.koenig@amd.com,
 linaro-mm-sig@lists.linaro.org, robh+dt@kernel.org, manish.narani@xilinx.com,
 derek.kiernan@xilinx.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/9] dt-binding: soc: xilinx: ai-engine:
 Add AI engine binding
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

T24gV2VkLCAxOCBOb3YgMjAyMCAwMDowNjoxMiAtMDgwMCwgV2VuZHkgTGlhbmcgd3JvdGU6Cj4g
WGlsaW54IEFJIGVuZ2luZSBhcnJheSBjYW4gYmUgcGFydGl0aW9uZWQgc3RhdGljYWxseSBmb3Ig
ZGlmZmVyZW50Cj4gYXBwbGljYXRpb25zLiBJbiB0aGUgZGV2aWNlIHRyZWUsIHRoZXJlIHdpbGwg
YmUgZGV2aWNlIG5vZGUgZm9yIHRoZSBBSQo+IGVuZ2luZSBkZXZpY2UsIGFuZCBkZXZpY2Ugbm9k
ZXMgZm9yIHRoZSBzdGF0aWNhbGx5IGNvbmZpZ3VyZWQgQUkgZW5naW5lCj4gcGFydGl0aW9ucy4g
RWFjaCBvZiB0aGUgc3RhdGljYWxseSBjb25maWd1cmVkIHBhcnRpdGlvbiBoYXMgYSBwYXJ0aXRp
b24KPiBJRCBpbiB0aGUgc3lzdGVtLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFdlbmR5IExpYW5nIDx3
ZW5keS5saWFuZ0B4aWxpbnguY29tPgo+IC0tLQo+ICAuLi4vYmluZGluZ3Mvc29jL3hpbGlueC94
bG54LGFpLWVuZ2luZS55YW1sICAgICAgICB8IDExOSArKysrKysrKysrKysrKysrKysrKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDExOSBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3hpbGlueC94bG54LGFpLWVuZ2lu
ZS55YW1sCj4gCgoKTXkgYm90IGZvdW5kIGVycm9ycyBydW5uaW5nICdtYWtlIGR0X2JpbmRpbmdf
Y2hlY2snIG9uIHlvdXIgcGF0Y2g6Cgp5YW1sbGludCB3YXJuaW5ncy9lcnJvcnM6Ci4vRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy94aWxpbngveGxueCxhaS1lbmdpbmUueWFt
bDoxMDoyOiBbd2FybmluZ10gd3JvbmcgaW5kZW50YXRpb246IGV4cGVjdGVkIDIgYnV0IGZvdW5k
IDEgKGluZGVudGF0aW9uKQoKZHRzY2hlbWEvZHRjIHdhcm5pbmdzL2Vycm9yczoKL2J1aWxkcy9y
b2JoZXJyaW5nL2xpbnV4LWR0LXJldmlldy9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3Mvc29jL3hpbGlueC94bG54LGFpLWVuZ2luZS55YW1sOiAnYWRkaXRpb25hbFByb3BlcnRpZXMn
IGlzIGEgcmVxdWlyZWQgcHJvcGVydHkKL2J1aWxkcy9yb2JoZXJyaW5nL2xpbnV4LWR0LXJldmll
dy9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3hpbGlueC94bG54LGFpLWVu
Z2luZS55YW1sOiBpZ25vcmluZywgZXJyb3IgaW4gc2NoZW1hOiAKd2FybmluZzogbm8gc2NoZW1h
IGZvdW5kIGluIGZpbGU6IC4vRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy94
aWxpbngveGxueCxhaS1lbmdpbmUueWFtbAoKClNlZSBodHRwczovL3BhdGNod29yay5vemxhYnMu
b3JnL3BhdGNoLzE0MDIwMDgKClRoZSBiYXNlIGZvciB0aGUgcGF0Y2ggaXMgZ2VuZXJhbGx5IHRo
ZSBsYXN0IHJjMS4gQW55IGRlcGVuZGVuY2llcwpzaG91bGQgYmUgbm90ZWQuCgpJZiB5b3UgYWxy
ZWFkeSByYW4gJ21ha2UgZHRfYmluZGluZ19jaGVjaycgYW5kIGRpZG4ndCBzZWUgdGhlIGFib3Zl
CmVycm9yKHMpLCB0aGVuIG1ha2Ugc3VyZSAneWFtbGxpbnQnIGlzIGluc3RhbGxlZCBhbmQgZHQt
c2NoZW1hIGlzIHVwIHRvCmRhdGU6CgpwaXAzIGluc3RhbGwgZHRzY2hlbWEgLS11cGdyYWRlCgpQ
bGVhc2UgY2hlY2sgYW5kIHJlLXN1Ym1pdC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
