Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMZ4Lv9VF2oPBQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 22:37:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9CD5EA1FD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 22:37:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC37F40962
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 20:37:17 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id 734CB3F76C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 20:37:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=DI6pgs5+;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of xuehaohu@google.com designates 209.85.167.52 as permitted sender) smtp.mailfrom=xuehaohu@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5a86d384ca6so33e87.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 13:37:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779914227; cv=none;
        d=google.com; s=arc-20240605;
        b=EXsH88Siqwj5t4d6WMN7k4PnoCUohiD/B2x8fS1aBYncvOEx0ByHGDdp9j/DF/bmb2
         uwxnEnYE0MAct8uLChRloNQOTuwtGVuKNtV2H1icmGsTUfA0EM7CdX60g30gEoKWh6dR
         y+yo9DjThs9wjBzRFQRvp8pHB2kfCkmI48Z/fRqT/lTAusQcQilzb6eRTxgbKmURZCCU
         x8KEjbiTIBzlzFNffPgEplXiTFmARZo6tJK3CTyDIa5alzbEJl9gVFajy9iTDF0oWWdX
         Uxwr2shTRliyGdvfScX7lrkdIwNW4hMfsFlrfGPsqqfP6AtszL95yGIQmGDK6Stpgn0C
         JOZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FiFa1Df4saC1J/ZGIYY64ADBjJ4UDzy5361EO2Lv5uM=;
        fh=VqXOJP02vTPfVqgwx4YuQ+VXF+QNxWqO7/ghBJcywAg=;
        b=jlgJNaYFsVgLdJwxuhroH0JNOtJMvF6HITO0P5XCTwJZCalYEJh2TZknQ3WIEKrNM4
         CSIDeQBgAZjbKf+tGf1UluMo4SG0N5k01gPn+aOtiXAYCE2Zs9jFfOymDi9oyxwtIg+W
         4Dno8oSeTBhHa8h4zkawxyiNIHYuIGtvHoDLIhr9YgODtHtKoBOb/6PtaPJBOlJ/vUcV
         sqMvkaWxTruZAunfqiKZi/6MDNLDqqR2dUvGqRbaT4pKXUQw1J8kD4zoSH22hKxiNpAv
         8Ue23iBM9ibE0Ra0AZjhMtP6zVR+k6y1ImAnudFheyGYYUNpR7MiR1WHEoO0q38bZopi
         lQKw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779914227; x=1780519027; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FiFa1Df4saC1J/ZGIYY64ADBjJ4UDzy5361EO2Lv5uM=;
        b=DI6pgs5+8t4bQixkAMCyJRhntSMbXS6QSyWQiYiLTRIi0eWSQQiNC5l1tfjfe37x1i
         O7269KsuK3xlTVqhTvOsDvsVJMKH26rZ55mGrlKo/qVeCf+CVkrFqNPDRC95pBh3x2Gi
         PMWioBeTLQq6Rk2Af/+Q3NJfQSMhI4iPpWpqNrTP63JYwanln54qjqwEEmxCjhT87fZ3
         WqkCrGM0FPJSNmb+XsUXQ0HuBOgj0qItFeqHgSPYfKi66+O3bXkmXfrA4iqF2UjaZ5d/
         goD6O4IttuImfDmfOjSyCJgrSOMB/KCS9x+AHcqNbnxrEVoPF8MeNTJAD55BW1xG6zSF
         cgSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779914227; x=1780519027;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FiFa1Df4saC1J/ZGIYY64ADBjJ4UDzy5361EO2Lv5uM=;
        b=iuORAas5K5F1DPRI8toZqEH7O1LyMSkHZxK9z5XPQ1uJbsB4ueo1yLNV95u0X257j2
         evPU/kMXLcF1FhuzcWFcBAHMG3KJSrEpBAY1YP5pDxHZBD8JsTIrHsH9A30+NfEUptIV
         YgKfkBesb1ONN1U0wlRYNbE1D9ROMwQuXxS9stqOl2jCp1tqHh+pWFYQATYT34un2uQy
         R5tzuuv/kOzh78mKmyxAjfha3+xPMqGFIvMpAbOvhwbcYg4oy9M6NiohyLESyB0ENXZj
         QdLosrb1oyptM2jcmhly2trS/JYPkX2RXoZeCW1SvJfGDxfWzugAkWxJnivaGHfisAJY
         WvSw==
X-Forwarded-Encrypted: i=1; AFNElJ/n+DS4MYlk7N5SLr6A7TCUIMQAdn9hyn1WoOYWwcQ44yPMp1CO5WTNqYP0CCq49gUDDeNakoeyeexmfPwY@lists.linaro.org
X-Gm-Message-State: AOJu0YxjklYyYWLC8RX1S5aWnMy1KBp8xd3SJa7FuJ6Wi4nqy7Z/JW9t
	46fsAWki+S0StbPMFC3PCWHO4Ukg628SYkC/L7X7GMG3bZmwC3K9enAy4qaT3e3CYWfQMK5WgXx
	SuJUWax+VYdJr1thHTHNVLdk4WRlQhDJux/CD/r0=
X-Gm-Gg: Acq92OFsOZUwpVB2F3QyWl/5W31PGIDAa2JNGdGR8ligYLpC63pfOTarTkwlk+Lv4n5
	nYwIHWdHSoIOsHehjJK+rozimmo0Fk1DbnBnbYzQVQEpQseTfCMgzr7L4rkf4J4fgZn7x5+zNVQ
	KokpLFiEavYN/oDQb3uUi6i0hgoe0aSR5/1FxYB4oPHC+Ww7mLvM2MkXo9azaTErVNI4gUGb9An
	SQx2inBkMKiKiwNpgRZw4MEgkUmufJ6tN1mdRHW9LqZLr5pwAVgtL/0FR7Koe10J0gRBw91paWb
	MkcoD2JbeVJRD29eMA0t3UxsxNE/Nan7a2n3C0wPLPIhpys=
X-Received: by 2002:a05:6512:134a:b0:5a4:462:a470 with SMTP id
 2adb3069b0e04-5aa4ff92e07mr24638e87.7.1779914226791; Wed, 27 May 2026
 13:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260511214243.349487-1-xuehaohu@google.com> <20260526173350.2359263-1-praan@google.com>
In-Reply-To: <20260526173350.2359263-1-praan@google.com>
From: David Hu <xuehaohu@google.com>
Date: Wed, 27 May 2026 16:36:54 -0400
X-Gm-Features: AVHnY4IF3I2qsMWkH6V2x0MBlfaofpaRNxk4VxA3EVoNIlcP5hkGNNAtRYxgcFU
Message-ID: <CAPd9Lg_aXizh0R1wnRitwVRMdh5SmfUmLiQLyF+EJ31yFeLYJg@mail.gmail.com>
To: Pranjal Shrivastava <praan@google.com>
X-Spamd-Bar: -----
Message-ID-Hash: W53JJVV2LUO35AKWTDKYPHGSYDJZJF6F
X-Message-ID-Hash: W53JJVV2LUO35AKWTDKYPHGSYDJZJF6F
X-MailFrom: xuehaohu@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, kevin.tian@intel.com, ankita@nvidia.com, jgg@ziepe.ca, alex@shazbot.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, jmoroni@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W53JJVV2LUO35AKWTDKYPHGSYDJZJF6F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.950];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 2C9CD5EA1FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXkgMjYsIDIwMjYgYXQgMTozM+KAr1BNIFByYW5qYWwgU2hyaXZhc3RhdmEgPHBy
YWFuQGdvb2dsZS5jb20+IHdyb3RlOg0KPg0KPiBPbiBNb24sIE1heSAxMSwgMjAyNiwgRGF2aWQg
SHUgd3JvdGU6DQo+ID4gSW4gY2FzZSBNTUlPIHNpemUgaXMgYmlnZ2VyIHRoYW4gNEcsIGFuZCBw
ZWVyMnBlZXINCj4gPiBkbWEgZ29lcyB0aHJvdWdoIGhvc3QgYnJpZGdlLCB3ZSB0cmlnZ2VyIHRo
ZSBjb2RlDQo+ID4gcGF0aCB0byBhc3NpZ24gdG90YWwgbGlua2VkIElWT0EsIGdyZWF0ZXIgdGhh
biA0Rw0KPg0KPiBOaXQ6IHMvSVZPQS9JT1ZBDQo+DQo+ID4gdG8gbWFwcGVkX2xlbiwgYW5kIGxl
YWRpbmcgdG8gYSBzaWxlbnQgb3ZlcmZsb3cNCj4NCj4gPiBGaXhlczogM2FhMzFhOGJiMTFlICgi
ZG1hLWJ1ZjogcHJvdmlkZSBwaHlzX3ZlYyB0byBzY2F0dGVyLWdhdGhlciBtYXBwaW5nIHJvdXRp
bmUiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IERhdmlkIEh1IDx4dWVoYW9odUBnb29nbGUuY29tPg0K
PiA+IC0tLQ0KPiA+IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLW1hcHBpbmcuYyB8IDMgKystDQo+
ID4gMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPg0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1tYXBwaW5nLmMgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi1tYXBwaW5nLmMNCj4gPiBpbmRleCA3OTRhY2ZmMjU0NmEuLjY1ODA2
NDE0MDM1NyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1tYXBwaW5n
LmMNCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1tYXBwaW5nLmMNCj4gPiBAQCAt
OTUsNyArOTUsOCBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZfcGh5c192ZWNfdG9fc2d0KHN0
cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzaXplX3QgbnJfcmFuZ2VzLCBzaXplX3Qgc2l6ZSwNCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIGRtYV9kYXRhX2RpcmVj
dGlvbiBkaXIpDQo+ID4gew0KPiA+IC0gICAgIHVuc2lnbmVkIGludCBuZW50cywgbWFwcGVkX2xl
biA9IDA7DQo+ID4gKyAgICAgdW5zaWduZWQgaW50IG5lbnRzID0gMDsNCj4gPiArICAgICBzaXpl
X3QgbWFwcGVkX2xlbiA9IDA7DQo+ID4gICAgICAgc3RydWN0IGRtYV9idWZfZG1hICpkbWE7DQo+
ID4gICAgICAgc3RydWN0IHNjYXR0ZXJsaXN0ICpzZ2w7DQo+ID4gICAgICAgZG1hX2FkZHJfdCBh
ZGRyOw0KPg0KPiBNaW5vciBuaXQ6IExldCdzIGZvbGxvdyB0aGUgcmV2ZXJzZSB4bWFzIHRyZWUg
Zm9ybWF0Pw0KPiBUaGlzIGxvb2tzIGNvcnJlY3QgdG8gbWUsIGZvciB0aGlzIGNoYW5nZToNCj4N
Cj4gUmV2aWV3ZWQtYnk6IFByYW5qYWwgU2hyaXZhc3RhdmEgPHByYWFuQGdvb2dsZS5jb20+DQo+
DQo+IEFwYXJ0IGZyb20gdGhpcywgSSBzZWUgc2ltaWxhciBpc3N1ZXMgYXQgb3RoZXIgcGxhY2Vz
Og0KPg0KPiAgIDEuIEluIGNhbGNfc2dfbmVudHMoKSwgbmVudHMgaXMgYWNjdW11bGF0ZWQgYXMg
YW4gdW5zaWduZWQgaW50LiBbMV0NCj4gICAgICBJZiBucl9yYW5nZXMgaXMgdmVyeSBsYXJnZSwg
bmVudHMgY291bGQgYWxzbyBvdmVyZmxvdywgcG90ZW50aWFsbHkNCj4gICAgICBsZWFkaW5nIHRv
IGEgc21hbGwgYWxsb2NhdGlvbiBpbiBzZ19hbGxvY190YWJsZSgpIGFuZCBhIHN1YnNlcXVlbnQN
Cj4gICAgICBvdXQtb2YtYm91bmRzIGFjY2VzcyBpbiB0aGUgbWFwcGluZyBsb29wLiBJdCBtaWdo
dCBiZSB3b3J0aCBjaGFuZ2luZw0KPiAgICAgIG5lbnRzIHRvIHNpemVfdCB0aGVyZSBhbmQgYWRk
aW5nIGEgY2hlY2sgYWdhaW5zdCBVSU5UX01BWC4NCj4NCj4gICAgMi4gSW4gZmlsbF9zZ19lbnRy
eSgpLCB0aGUgbG9vcCB2YXJpYWJsZSBpIGlzIGFuIGludCBbMl0uIENoYW5naW5nDQo+ICAgICAg
aXQgdG8gdW5zaWduZWQgaW50IHdvdWxkIGJlIG1vcmUgY29uc2lzdGVudCB3aXRoIHRoZSBuZW50
cyB0eXBlDQo+ICAgICAgYW5kIHNhZmVyIGZvciBleHRyZW1lbHkgbGFyZ2UgbWFwcGluZ3MuDQo+
DQo+DQo+IE1heWJlLCB3ZSBzaG91bGQgYWxzbyBmaXggdGhlc2U/IEZvciBleGFtcGxlOg0KPg0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtbWFwcGluZy5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYtbWFwcGluZy5jDQo+IGluZGV4IDc5NGFjZmYyNTQ2YS4uZWNmMDdm
ZmNhMmI5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1tYXBwaW5nLmMN
Cj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtbWFwcGluZy5jDQo+IEBAIC0xMCw3ICsx
MCw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKmZpbGxfc2dfZW50cnkoc3RydWN0IHNj
YXR0ZXJsaXN0ICpzZ2wsIHNpemVfdCBsZW5ndGgsDQo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZG1hX2FkZHJfdCBhZGRyKQ0KPiAgew0KPiAgICAgICAgIHVuc2ln
bmVkIGludCBsZW4sIG5lbnRzOw0KPiAtICAgICAgIGludCBpOw0KPiArICAgICAgIHVuc2lnbmVk
IGludCBpOw0KPg0KPiAgICAgICAgIG5lbnRzID0gRElWX1JPVU5EX1VQKGxlbmd0aCwgVUlOVF9N
QVgpOw0KPiAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBuZW50czsgaSsrKSB7DQo+IEBAIC0zNiw3
ICszNiw3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgY2FsY19zZ19uZW50cyhzdHJ1Y3QgZG1hX2lv
dmFfc3RhdGUgKnN0YXRlLA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3Ry
dWN0IHBoeXNfdmVjICpwaHlzX3ZlYywgc2l6ZV90IG5yX3JhbmdlcywNCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHNpemVfdCBzaXplKQ0KPiAgew0KPiAtICAgICAgIHVuc2ln
bmVkIGludCBuZW50cyA9IDA7DQo+ICsgICAgICAgc2l6ZV90IG5lbnRzID0gMDsNCj4gICAgICAg
ICBzaXplX3QgaTsNCj4NCj4gICAgICAgICBpZiAoIXN0YXRlIHx8ICFkbWFfdXNlX2lvdmEoc3Rh
dGUpKSB7DQo+IEBAIC01MSw2ICs1MSw5IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgY2FsY19zZ19u
ZW50cyhzdHJ1Y3QgZG1hX2lvdmFfc3RhdGUgKnN0YXRlLA0KPiAgICAgICAgICAgICAgICAgbmVu
dHMgPSBESVZfUk9VTkRfVVAoc2l6ZSwgVUlOVF9NQVgpOw0KPiAgICAgICAgIH0NCj4NCj4gKyAg
ICAgICBpZiAobmVudHMgPiBVSU5UX01BWCkNCj4gKyAgICAgICAgICAgICAgIHJldHVybiAwOw0K
PiArDQo+ICAgICAgICAgcmV0dXJuIG5lbnRzOw0KPiAgfQ0KPg0KPiBUaGFua3MsDQo+IFByYWFu
DQo+DQo+IFsxXSBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ny4xLXJjMy9zb3Vy
Y2UvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtbWFwcGluZy5jI0wzOQ0KPiBbMl0gaHR0cHM6Ly9l
bGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjcuMS1yYzMvc291cmNlL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLW1hcHBpbmcuYyNMMTMNClRoYW5rIHlvdSBQcmFuamFsIGZvciB0aGUgcmV2aWV3ICEg
R29vZCBjYXRjaCBvbiBvdGhlciBwb3RlbnRpYWwNCm92ZXJmbG93IHNpdGVzLiBJIGhhdmUgZm9s
ZGVkIGluIHlvdXIgc3VnZ2VzdGlvbnMgZm9yIGNhbGNfc2dfbmVudHMoKSwNCmFuZCBmaWxsX3Nn
X2VudHJ5KCksIGFuZCBhcHBsaWVkIHJldmVyc2UgeG1hcyB0cmVlIGZvcm1hdHRpbmcuIFNlbmRp
bmcNCm91dCBhIHYyIHNob3J0bHkuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
