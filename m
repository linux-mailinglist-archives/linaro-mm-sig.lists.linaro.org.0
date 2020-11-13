Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D362B22A1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 18:36:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68A47666F4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 17:36:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5BEA6666F3; Fri, 13 Nov 2020 17:36:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 47561666EE;
	Fri, 13 Nov 2020 17:35:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 62ABB666DD
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:35:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4BB88666EE; Fri, 13 Nov 2020 17:35:45 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 1BCCF666DD
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:35:44 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id p22so8936020wmg.3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 09:35:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=S6otP4T92FhYb0o9zH9HwhqeFp2M3AuU45BWAEnFIGI=;
 b=Cr/m/Czi2nXHpQTMjFZ/mkvroPbPv1MD+cPeqKpFlK6Q6Z7Uk5rrcpgSxrfRCp20o7
 jciDN6Ke0txJ3DFBFo+1VjaLuqivkGcNILMBywFB46giNhnpWy7obU8/Miy6+4amTtSC
 jfRPNr/xOB+tviavLb0FQA2Urljb+oULidcp9PCRQwK6xYAhyL+sRnHK381hVrTknL2Z
 +GQ/HZD7Ei+kipd35oZCkvfYGbnCdmOWUJnhZ/etGf8KHFFxFxlJZ1aarLy0wWsIYSaR
 OUgdZMfxl7kpA+x6YF7ntqhFjapE+5weART+VnMI6bdfsAMf+fuYD1keCVxiXr7qtacM
 YFkQ==
X-Gm-Message-State: AOAM5334iY1ur6ERIesMNSJYVJKD2e+iiJ+Ia3M7HuKV4xf4PyVpLVZp
 x6aSiR+u9Em18vlCirpxBmDvTuiN+1lnw5VqBGA=
X-Google-Smtp-Source: ABdhPJxF+0EsquFWFOhsdKMbhKyVEoU4mWq6nr1k3xX0fu+rqyDpbAXHH2R0sqIgLJqVkgN+428qDyu0fypinrEpH78=
X-Received: by 2002:a1c:1c3:: with SMTP id 186mr3557828wmb.39.1605288940212;
 Fri, 13 Nov 2020 09:35:40 -0800 (PST)
MIME-Version: 1.0
References: <20201113134938.4004947-1-lee.jones@linaro.org>
 <20201113134938.4004947-41-lee.jones@linaro.org>
In-Reply-To: <20201113134938.4004947-41-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 13 Nov 2020 12:35:28 -0500
Message-ID: <CADnq5_Mo5RepKQ_ZvG1VFHKtypSZXa4fvsKBD+6Z-HgSn+26gA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 40/40] drm/amd/amdgpu/gfx_v7_0: Remove
	unused struct definition
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

T24gRnJpLCBOb3YgMTMsIDIwMjAgYXQgODo1MCBBTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92N18wLmM6NTIx
MTo0NTogd2FybmluZzog4oCYZ2Z4X3Y3XzBfaXBfYmxvY2vigJkgZGVmaW5lZCBidXQgbm90IHVz
ZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPgo+IENjOiBBbGV4IERldWNoZXIgPGFsZXhh
bmRlci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4g
Q2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQgU2Vtd2FsIDxz
dW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1tZWRp
YUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4g
U2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCkFwcGxpZWQu
ICBUaGFua3MhCgpBbGV4Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhf
djdfMC5jIHwgOSAtLS0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y3
XzAuaCB8IDEgLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92N18wLmMgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9nZnhfdjdfMC5jCj4gaW5kZXggY2IwN2JjMjFkY2JlNS4uMDRlMWU5
MmY1ZjNjZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjdf
MC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y3XzAuYwo+IEBAIC01
MjA4LDE1ICs1MjA4LDYgQEAgc3RhdGljIHZvaWQgZ2Z4X3Y3XzBfZ2V0X2N1X2luZm8oc3RydWN0
IGFtZGdwdV9kZXZpY2UgKmFkZXYpCj4gICAgICAgICBjdV9pbmZvLT5sZHNfc2l6ZSA9IDY0Owo+
ICB9Cj4KPiAtc3RhdGljIGNvbnN0IHN0cnVjdCBhbWRncHVfaXBfYmxvY2tfdmVyc2lvbiBnZnhf
djdfMF9pcF9ibG9jayA9Cj4gLXsKPiAtICAgICAgIC50eXBlID0gQU1EX0lQX0JMT0NLX1RZUEVf
R0ZYLAo+IC0gICAgICAgLm1ham9yID0gNywKPiAtICAgICAgIC5taW5vciA9IDAsCj4gLSAgICAg
ICAucmV2ID0gMCwKPiAtICAgICAgIC5mdW5jcyA9ICZnZnhfdjdfMF9pcF9mdW5jcywKPiAtfTsK
PiAtCj4gIGNvbnN0IHN0cnVjdCBhbWRncHVfaXBfYmxvY2tfdmVyc2lvbiBnZnhfdjdfMV9pcF9i
bG9jayA9Cj4gIHsKPiAgICAgICAgIC50eXBlID0gQU1EX0lQX0JMT0NLX1RZUEVfR0ZYLAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjdfMC5oIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y3XzAuaAo+IGluZGV4IDZmYjljMTUyNDY5MWYuLmVl
ZGNlN2QwMDdmMWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4
X3Y3XzAuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92N18wLmgKPiBA
QCAtMjQsNyArMjQsNiBAQAo+ICAjaWZuZGVmIF9fR0ZYX1Y3XzBfSF9fCj4gICNkZWZpbmUgX19H
RlhfVjdfMF9IX18KPgo+IC1leHRlcm4gY29uc3Qgc3RydWN0IGFtZGdwdV9pcF9ibG9ja192ZXJz
aW9uIGdmeF92N18wX2lwX2Jsb2NrOwo+ICBleHRlcm4gY29uc3Qgc3RydWN0IGFtZGdwdV9pcF9i
bG9ja192ZXJzaW9uIGdmeF92N18xX2lwX2Jsb2NrOwo+ICBleHRlcm4gY29uc3Qgc3RydWN0IGFt
ZGdwdV9pcF9ibG9ja192ZXJzaW9uIGdmeF92N18yX2lwX2Jsb2NrOwo+ICBleHRlcm4gY29uc3Qg
c3RydWN0IGFtZGdwdV9pcF9ibG9ja192ZXJzaW9uIGdmeF92N18zX2lwX2Jsb2NrOwo+IC0tCj4g
Mi4yNS4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmkt
ZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
