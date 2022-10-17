Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 112B66013F7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 18:52:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D193E3F0D1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Oct 2022 16:52:39 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by lists.linaro.org (Postfix) with ESMTPS id 650EE3EC7D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Oct 2022 16:52:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=Wli2+vCU;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.167.181 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f181.google.com with SMTP id m81so12778412oia.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Oct 2022 09:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+1LwX5bRFQXNkq6PB+GJkYIHW1maFFhRT+npXlh3EBU=;
        b=Wli2+vCUPK20VH6qBK0/9u0+D86Cprn715QA3rGfohk6lLxfaKQ/gr2fBPGeUKivfV
         9scv3keMMR40vWDmdGPV9mBFqcrR3IHAjiKgk9g2HFz+2GzmZeYm2V80n+MJ78WVfpcT
         yeYzVTE/N/xMeay1FUkdDXp4VjEEugswL6+/mgtjc3koOgAHsXFOFPuqyxYHHSkwavDv
         C+M6uSoIBnLjtzFoB6Ioq0cJQ0heFLwsSXacVrlHTrT1UMeP6VkCilRtw5NikcgJK2rM
         52sgzEMrbJk98DoOJk/9P8dvOgrS6rFCixGcl08kKYuIS08WWQTsUWkkSY90XgZi+dpx
         Y0Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+1LwX5bRFQXNkq6PB+GJkYIHW1maFFhRT+npXlh3EBU=;
        b=hQtAxQIs8bS1hb+kCeK3TqLLMIc2p0T0gOLQdQCijFjt4IfKge5Lc/OBOfTWZNzmkV
         9cmX9xq5pAFqss3cxDKs2S/6F8A8vOj7/5+rmE4MbHpW+dZOT/XgzW8OdhUeVhGLaXLU
         5AFe4NnrifFG6XYjMKaoHQdmzJ0xwQX0ulgd2wSZd4+qNt/0OJgW4+PVOE0rZGgfelHT
         eQ/JtFspLaDM2ox1IpBsradMu7sCf7atL90IzMlVNaSNQ864X2HeC3JnSsR7lKYw0ZfP
         a72El9vpXsrwh+UT8rPQ8Fzl/9KnCjEsbrZXsqEfTbqkXtgKL17zGEd5uYmhKgiqI8S0
         /s6A==
X-Gm-Message-State: ACrzQf160/y8AhptbrRa9q19kwDnMeyi2TRyvcURah3YyUKIvuMO/pG4
	j9xu64dwgateigf3QKTsOd1d5OuEOXiOvNu1jik=
X-Google-Smtp-Source: AMsMyM7pkfs8YvaEJ3rXNBXJfzbthWWMDK+JMBHXzoIgFykCTCTTewwkS0A48fh2TzykUTENTQtzoKPd6PQhlDPFwow=
X-Received: by 2002:a05:6808:14d2:b0:354:c733:abd3 with SMTP id
 f18-20020a05680814d200b00354c733abd3mr5577155oiw.96.1666025541711; Mon, 17
 Oct 2022 09:52:21 -0700 (PDT)
MIME-Version: 1.0
References: <20221013210714.16320-1-fmdefrancesco@gmail.com> <fb0b7389-7121-04f8-176d-1ababe0ad8f2@amd.com>
In-Reply-To: <fb0b7389-7121-04f8-176d-1ababe0ad8f2@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 17 Oct 2022 12:52:10 -0400
Message-ID: <CADnq5_PP3VCXQ5rbC0-8Qsi5W7Ew87U_bRknz4=qxbrPxVQ+qA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ----
X-Rspamd-Queue-Id: 650EE3EC7D
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[21];
	NEURAL_HAM(-0.00)[-0.619];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,ffwll.ch,kernel.org,linaro.org,suse.com,roeck-us.net,chromium.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,intel.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.181:from];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: UAZZQ5DVHM7I5B5VMCER2UWTEJOZVZOF
X-Message-ID-Hash: UAZZQ5DVHM7I5B5VMCER2UWTEJOZVZOF
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, Alex Deucher <alexander.deucher@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Christian Brauner <brauner@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Kees Cook <keescook@chromium.org>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-hwmon@vger.kernel.org, linux-hardening@vger.kernel.org, "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>, Ira Weiny <ira.weiny@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/radeon: Replace kmap() with kmap_local_page()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UAZZQ5DVHM7I5B5VMCER2UWTEJOZVZOF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZC4gIFRoYW5rcyENCg0KT24gRnJpLCBPY3QgMTQsIDIwMjIgYXQgMzowMyBBTSBDaHJp
c3RpYW4gS8O2bmlnDQo8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0g
MTMuMTAuMjIgdW0gMjM6MDcgc2NocmllYiBGYWJpbyBNLiBEZSBGcmFuY2VzY286DQo+ID4gVGhl
IHVzZSBvZiBrbWFwKCkgaXMgYmVpbmcgZGVwcmVjYXRlZCBpbiBmYXZvciBvZiBrbWFwX2xvY2Fs
X3BhZ2UoKS4NCj4gPg0KPiA+IFRoZXJlIGFyZSB0d28gbWFpbiBwcm9ibGVtcyB3aXRoIGttYXAo
KTogKDEpIEl0IGNvbWVzIHdpdGggYW4gb3ZlcmhlYWQgYXMNCj4gPiB0aGUgbWFwcGluZyBzcGFj
ZSBpcyByZXN0cmljdGVkIGFuZCBwcm90ZWN0ZWQgYnkgYSBnbG9iYWwgbG9jayBmb3INCj4gPiBz
eW5jaHJvbml6YXRpb24gYW5kICgyKSBpdCBhbHNvIHJlcXVpcmVzIGdsb2JhbCBUTEIgaW52YWxp
ZGF0aW9uIHdoZW4gdGhlDQo+ID4ga21hcOKAmXMgcG9vbCB3cmFwcyBhbmQgaXQgbWlnaHQgYmxv
Y2sgd2hlbiB0aGUgbWFwcGluZyBzcGFjZSBpcyBmdWxseQ0KPiA+IHV0aWxpemVkIHVudGlsIGEg
c2xvdCBiZWNvbWVzIGF2YWlsYWJsZS4NCj4gPg0KPiA+IFdpdGgga21hcF9sb2NhbF9wYWdlKCkg
dGhlIG1hcHBpbmdzIGFyZSBwZXIgdGhyZWFkLCBDUFUgbG9jYWwsIGNhbiB0YWtlDQo+ID4gcGFn
ZSBmYXVsdHMsIGFuZCBjYW4gYmUgY2FsbGVkIGZyb20gYW55IGNvbnRleHQgKGluY2x1ZGluZyBp
bnRlcnJ1cHRzKS4NCj4gPiBJdCBpcyBmYXN0ZXIgdGhhbiBrbWFwKCkgaW4ga2VybmVscyB3aXRo
IEhJR0hNRU0gZW5hYmxlZC4gRnVydGhlcm1vcmUsDQo+ID4gdGhlIHRhc2tzIGNhbiBiZSBwcmVl
bXB0ZWQgYW5kLCB3aGVuIHRoZXkgYXJlIHNjaGVkdWxlZCB0byBydW4gYWdhaW4sIHRoZQ0KPiA+
IGtlcm5lbCB2aXJ0dWFsIGFkZHJlc3NlcyBhcmUgcmVzdG9yZWQgYW5kIHN0aWxsIHZhbGlkLg0K
PiA+DQo+ID4gVGhlcmVmb3JlLCByZXBsYWNlIGttYXAoKSB3aXRoIGttYXBfbG9jYWxfcGFnZSgp
IGluIHJhZGVvbl90dG1fZ3R0X3JlYWQoKS4NCj4gPg0KPiA+IENjOiAiVmVua2F0YXJhbWFuYW4s
IEFuaXJ1ZGgiIDxhbmlydWRoLnZlbmthdGFyYW1hbmFuQGludGVsLmNvbT4NCj4gPiBTdWdnZXN0
ZWQtYnk6IElyYSBXZWlueSA8aXJhLndlaW55QGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5
OiBGYWJpbyBNLiBEZSBGcmFuY2VzY28gPGZtZGVmcmFuY2VzY29AZ21haWwuY29tPg0KPg0KPiBS
ZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
Pg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fdHRtLmMgfCA0
ICsrLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25f
dHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl90dG0uYw0KPiA+IGluZGV4IGQz
M2ZlYzQ4ODcxMy4uYmRiNGMwZTA3MzZiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9yYWRlb24vcmFkZW9uX3R0bS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
YWRlb25fdHRtLmMNCj4gPiBAQCAtODY5LDExICs4NjksMTEgQEAgc3RhdGljIHNzaXplX3QgcmFk
ZW9uX3R0bV9ndHRfcmVhZChzdHJ1Y3QgZmlsZSAqZiwgY2hhciBfX3VzZXIgKmJ1ZiwNCj4gPg0K
PiA+ICAgICAgICAgICAgICAgcGFnZSA9IHJkZXYtPmdhcnQucGFnZXNbcF07DQo+ID4gICAgICAg
ICAgICAgICBpZiAocGFnZSkgew0KPiA+IC0gICAgICAgICAgICAgICAgICAgICBwdHIgPSBrbWFw
KHBhZ2UpOw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBwdHIgPSBrbWFwX2xvY2FsX3BhZ2Uo
cGFnZSk7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgIHB0ciArPSBvZmY7DQo+ID4NCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgciA9IGNvcHlfdG9fdXNlcihidWYsIHB0ciwgY3VyX3NpemUp
Ow0KPiA+IC0gICAgICAgICAgICAgICAgICAgICBrdW5tYXAocmRldi0+Z2FydC5wYWdlc1twXSk7
DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGt1bm1hcF9sb2NhbChwdHIpOw0KPiA+ICAgICAg
ICAgICAgICAgfSBlbHNlDQo+ID4gICAgICAgICAgICAgICAgICAgICAgIHIgPSBjbGVhcl91c2Vy
KGJ1ZiwgY3VyX3NpemUpOw0KPiA+DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
