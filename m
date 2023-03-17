Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4F26BF264
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 21:25:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 153113F52A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 20:25:53 +0000 (UTC)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	by lists.linaro.org (Postfix) with ESMTPS id 4D5B73F0AA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 20:25:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=VKYuDQH8;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.160.42 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-17683b570b8so6904658fac.13
        for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 13:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679084732;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+7N/5SkdFbLDourlYidVecmvge10Le3raMprhkQ2YpI=;
        b=VKYuDQH8nPi9ya7zgAwmREN+GuwmAVAcLFUdKcKuppWfo4W1MxXwgAh5TxIE3ipYph
         qulB8Lq8oF57cs5SxV6TT4pei+7u7mjWdIYCZOEtWKyyuXAyvtfup5QV0LDM+CIZfzQa
         6DC3uhGNaOQyb8LnT79dM9pB4w0lJVJsin/Ti8XMn7meublIWqtWVRNUbJaDuR1mmJV8
         NJfhF5e5Ggj5lN8kXRTnRbrWuhBlyQyZnHh9USnlZvt0FLmtwdOxBEwZRHit0OyhbOFJ
         p6q9HXnsIX4LRuq9SeUEe86+qtI17axfn1AMvmA7hgaY718cXErGmJYNb+eDqfAv230b
         mwIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679084732;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+7N/5SkdFbLDourlYidVecmvge10Le3raMprhkQ2YpI=;
        b=MhqglaevXWxqKIlQnAo5ohlwgL8yeAECOjxvYmquWh3JW3tf04MqfczxdS0Z44bvdU
         bz9n2kMKRxm/rsgOQbPFMaZMmZh3VyMv6mfS0pRb+VVl1W9e5qrpC/Iilft+Mjcg0rWp
         E2TAGoUP9F71A4/jx4wmSjs3m6bJXvR+OTd26Vj0X2s+x/NfFx7TYBjimZFdNTIttrca
         RTvmnQHpW7VS7O3HlM6oDk4tamcMws/viMuhfsk3EUP6KGQWai+2v3TvF+72k4+JsLyK
         iDA3lwk9cAVi1e/eNM0dgyf8dpCWxyvo6gvHVp08oAjF0YrjSevv90tu11+lPkjT1eVt
         VgHA==
X-Gm-Message-State: AO0yUKXTZlajgEm2qFuooSAvXvHkdkQ45P9QMDhR3QEt+DByXxcpMOQy
	xBdR1ZZfuM6Fo5nWMHx7F2wj0UDnjE7AGd/PywI=
X-Google-Smtp-Source: AK7set+MWzHjggCWfkotzjv7c10QgriF3tPYiWRYjwRgLeeQB4ULOcZL6eJCrv4r5X2TND/7KeognxUSoxZqL1EgdHg=
X-Received: by 2002:a05:6870:1099:b0:17c:29d8:61ee with SMTP id
 25-20020a056870109900b0017c29d861eemr7614oaq.3.1679084732788; Fri, 17 Mar
 2023 13:25:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230317081718.2650744-1-lee@kernel.org> <20230317081718.2650744-18-lee@kernel.org>
In-Reply-To: <20230317081718.2650744-18-lee@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 17 Mar 2023 16:25:21 -0400
Message-ID: <CADnq5_PTVrzPanSQznXLGWnnpKoRCjugBsExixkqEri+8i3r=Q@mail.gmail.com>
To: Lee Jones <lee@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4D5B73F0AA
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.42:from];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,vger.kernel.org,linaro.org,lists.linaro.org,ffwll.ch,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,ffwll.ch:email,linaro.org:email,lists.freedesktop.org:email,mail-oa1-f42.google.com:rdns,mail-oa1-f42.google.com:helo];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: ELLLJ6LHQEZQXDNSYAYRVLWSKQZD4P3G
X-Message-ID-Hash: ELLLJ6LHQEZQXDNSYAYRVLWSKQZD4P3G
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Jack Xiao <Jack.Xiao@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, linux-media@vger.kernel.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 17/37] drm/amd/amdgpu/amdgpu_mes: Ensure amdgpu_bo_create_kernel()'s return value is checked
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ELLLJ6LHQEZQXDNSYAYRVLWSKQZD4P3G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZC4gIFRoYW5rcyENCg0KT24gRnJpLCBNYXIgMTcsIDIwMjMgYXQgNDoyM+KAr0FNIExl
ZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBGaXhlcyB0aGUgZm9sbG93aW5n
IFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToNCj4NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9tZXMuYzogSW4gZnVuY3Rpb24g4oCYYW1kZ3B1X21lc19jdHhfYWxsb2Nf
bWV0YV9kYXRh4oCZOg0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X21lcy5j
OjEwOTk6MTM6IHdhcm5pbmc6IHZhcmlhYmxlIOKAmHLigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1
bnVzZWQtYnV0LXNldC12YXJpYWJsZV0NCj4NCj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVy
LmRldWNoZXJAYW1kLmNvbT4NCj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPg0KPiBDYzogIlBhbiwgWGluaHVpIiA8WGluaHVpLlBhbkBhbWQuY29tPg0K
PiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NCj4gQ2M6IERhbmllbCBWZXR0
ZXIgPGRhbmllbEBmZndsbC5jaD4NCj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxp
bmFyby5vcmc+DQo+IENjOiBKYWNrIFhpYW8gPEphY2suWGlhb0BhbWQuY29tPg0KPiBDYzogSGF3
a2luZyBaaGFuZyA8SGF3a2luZy5aaGFuZ0BhbWQuY29tPg0KPiBDYzogYW1kLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
Q2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnDQo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X21lcy5jIHwgNSAr
KysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPg0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X21lcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X21lcy5jDQo+IGluZGV4IDgyZTI3YmQ0ZjAzODMuLjMwY2Q3
MmNhMWVlZmQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9tZXMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfbWVzLmMN
Cj4gQEAgLTExMDQsNiArMTEwNCwxMSBAQCBpbnQgYW1kZ3B1X21lc19jdHhfYWxsb2NfbWV0YV9k
YXRhKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJmN0eF9kYXRhLT5tZXRhX2RhdGFfb2JqLA0KPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJmN0eF9kYXRhLT5tZXRhX2RhdGFfbWNfYWRkciwNCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICZjdHhfZGF0YS0+bWV0YV9kYXRhX3B0cik7DQo+ICsgICAgICAgaWYgKHIpIHsN
Cj4gKyAgICAgICAgICAgICAgIGRldl93YXJuKGFkZXYtPmRldiwgIiglZCkgY3JlYXRlIENUWCBi
byBmYWlsZWRcbiIsIHIpOw0KPiArICAgICAgICAgICAgICAgcmV0dXJuIHI7DQo+ICsgICAgICAg
fQ0KPiArDQo+ICAgICAgICAgaWYgKCFjdHhfZGF0YS0+bWV0YV9kYXRhX29iaikNCj4gICAgICAg
ICAgICAgICAgIHJldHVybiAtRU5PTUVNOw0KPg0KPiAtLQ0KPiAyLjQwLjAucmMxLjI4NC5nODgy
NTRkNTFjNS1nb29nDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
