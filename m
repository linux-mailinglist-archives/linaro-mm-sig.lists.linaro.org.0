Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6186D20C207
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 27 Jun 2020 16:18:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08170617CF
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 27 Jun 2020 14:18:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EAFC6615EF; Sat, 27 Jun 2020 14:18:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D57A6164A;
	Sat, 27 Jun 2020 14:18:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A811461504
 for <linaro-mm-sig@lists.linaro.org>; Sat, 27 Jun 2020 14:18:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 930306164A; Sat, 27 Jun 2020 14:18:09 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 7ED6161504
 for <linaro-mm-sig@lists.linaro.org>; Sat, 27 Jun 2020 14:18:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC7DF21655;
 Sat, 27 Jun 2020 14:18:06 +0000 (UTC)
Date: Sat, 27 Jun 2020 16:18:01 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Erwan Le Ray <erwan.leray@st.com>
Message-ID: <20200627141801.GA1945477@kroah.com>
References: <20200520133932.30441-1-erwan.leray@st.com>
 <20200520133932.30441-2-erwan.leray@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520133932.30441-2-erwan.leray@st.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 linaro-mm-sig@lists.linaro.org, Rob Herring <robh+dt@kernel.org>,
 linux-serial@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dt-bindings: serial: add generic DT
 binding for announcing RTS/CTS lines
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

T24gV2VkLCBNYXkgMjAsIDIwMjAgYXQgMDM6Mzk6MzFQTSArMDIwMCwgRXJ3YW4gTGUgUmF5IHdy
b3RlOgo+IEFkZCBzdXBwb3J0IG9mIGdlbmVyaWMgRFQgYmluZGluZyBmb3IgYW5ub3VjaW5nIFJU
Uy9DVFMgbGluZXMuIFRoZSBpbml0aWFsCj4gYmluZGluZyAnc3QsaHctZmxvdy1jb250cm9sJyBp
cyBub3QgbmVlZGVkIGFueW1vcmUgc2luY2UgZ2VuZXJpYyBiaW5kaW5nCj4gaXMgYXZhaWxhYmxl
LCBidXQgaXMga2VwdCBmb3IgYmFja3dhcmQgY29tcGF0aWJpbGl0eS4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBFcndhbiBMZSBSYXkgPGVyd2FuLmxlcmF5QHN0LmNvbT4KPiAKPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NlcmlhbC9zdCxzdG0zMi11YXJ0Lnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc2VyaWFsL3N0LHN0bTMyLXVh
cnQueWFtbAo+IGluZGV4IDc1Yjg1MjFlYjdjYi4uMDZkNWYyNTFlYzg4IDEwMDY0NAo+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zZXJpYWwvc3Qsc3RtMzItdWFydC55
YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NlcmlhbC9zdCxz
dG0zMi11YXJ0LnlhbWwKPiBAQCAtMzUsOSArMzUsMTEgQEAgcHJvcGVydGllczoKPiAgICAgIGRl
c2NyaXB0aW9uOiBsYWJlbCBhc3NvY2lhdGVkIHdpdGggdGhpcyB1YXJ0Cj4gIAo+ICAgIHN0LGh3
LWZsb3ctY3RybDoKPiAtICAgIGRlc2NyaXB0aW9uOiBlbmFibGUgaGFyZHdhcmUgZmxvdyBjb250
cm9sCj4gKyAgICBkZXNjcmlwdGlvbjogZW5hYmxlIGhhcmR3YXJlIGZsb3cgY29udHJvbCAoZGVw
cmVjYXRlZCkKPiAgICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL2Zs
YWcKPiAgCj4gKyAgdWFydC1oYXMtcnRzY3RzOiB0cnVlCj4gKwo+ICAgIGRtYXM6Cj4gICAgICBt
aW5JdGVtczogMQo+ICAgICAgbWF4SXRlbXM6IDIKPiAtLSAKPiAyLjE3LjEKPiAKCkRpZCB0aGlz
IGdldCBpZ25vcmVkIGJ5IHRoZSBEVCBtYWludGFpbmVycz8gIDooCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
