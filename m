Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5972B92A866
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jul 2024 19:50:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B1B341249
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jul 2024 17:50:14 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by lists.linaro.org (Postfix) with ESMTPS id 158574120B
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Jul 2024 17:50:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=GHvcnxBp;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e02748b2402so4577765276.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Jul 2024 10:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1720461009; x=1721065809; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nESyMzGZXBtAqIeO/AYycg3VVtY82ta3I2iF0FVP4cE=;
        b=GHvcnxBpjOMdEDhdusJlnm++Dzp+SyUAQHhbrw0hq8FyiSaBKGmOTRxx36ooCdyPtI
         pUvewqjuAKF6plk/j4hpHsLa47o3hXtGu2/30B3+ELcweDx3a573xJr1cswvwSisl1pX
         TNQYRVWPKH5BPbbSrtG7EJQqbXbn3nJW2+wJTt8XHoPO5XlePsLRhw/Ke3JZH3y6MFUS
         Z3+asgJxneUJa02maF3gy+klF+ZGOE8KOl26sKbw15kcjrZSCF/7WtZpa8+Ami0RHxVl
         cRbJDcEoHTKnFHcQ180mNwK4ZhFXaTQdLZiBRYkJ2XnIPAASEN7QM5m29wbQr5JaIGjg
         pKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720461009; x=1721065809;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nESyMzGZXBtAqIeO/AYycg3VVtY82ta3I2iF0FVP4cE=;
        b=KwVsQEMhd4uE+KIoT8qXfWI3dzR+Jf4istSK53Hev8I2c/LZcPfWQpCuAGWUDzVs/l
         8SPIdhpU1wDV+5mBGDXvkPqsEoQPQa9Xj0txB8Uc1plXl6LEmdtuQWp3JyWZCYxoz3Lw
         0CcwwtPrHUGpc4Vt3j+uD/bNxIkbSlQuwaQCH4lHz0VFCDp0eNgEOBoCWgjKXtXBVwQg
         Pj+gxi1l6ikbsS/UR6rA2L0RbboDIkCMu+vMrEVglF2Z0eLsKrkdAbk9kqo90W6pdjWc
         f/Xn4g0N1UydItC5u/YNTzGCdfF7j7dD6MDnJVjrx152TGI9/0/0Z5iT5v6U8qJBUNhg
         M+aQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFqidt+EF7PZrnLXyGuKQGe2UlXpjqnlPz+dMcIp+LhG5hC0/LahNMQhmQq3ToE4t4d/FzZfQjdD4OivAkutYteI34FcvykFZRrmL/ngM=
X-Gm-Message-State: AOJu0YxGzUuqWAPpVkgie5T7mVFXf6kFtuv8E+d6JaJ6f2yfBepDfWtG
	gD/4l2RWwK889PEF56cA2SGZuwb8+SG1ndz2/qISmkUrZHsrmXIENF+hi6PE/YyMThJI8w+H8Zf
	27hVxhkpjI6L9lQ0rVxOW/6MDJEN/1Gt5FkwW
X-Google-Smtp-Source: AGHT+IHcxq/i9rzCxsEN5hnVo4LPbu8O3jBlhcP+IANI38Pst6MQnmRwrHXpKPTOw9a59dfbicjTNMHGzlIpXAxgcP4=
X-Received: by 2002:a05:6902:1361:b0:e03:4e08:c93c with SMTP id
 3f1490d57ef6-e041b03995dmr571404276.13.1720461009288; Mon, 08 Jul 2024
 10:50:09 -0700 (PDT)
MIME-Version: 1.0
References: <20240708134654.1725-1-yuzenghui@huawei.com>
In-Reply-To: <20240708134654.1725-1-yuzenghui@huawei.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 8 Jul 2024 10:49:57 -0700
Message-ID: <CABdmKX1CXWuw0-gRukZeSoF=SZFi3eRPELe=EU_-q3OVKQHZzw@mail.gmail.com>
To: Zenghui Yu <yuzenghui@huawei.com>
X-Rspamd-Queue-Id: 158574120B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.175:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: EAYHXXC3XEYRM4LWPGOYENWTIHOOQZT7
X-Message-ID-Hash: EAYHXXC3XEYRM4LWPGOYENWTIHOOQZT7
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-kernel@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, shuah@kernel.org, wanghaibin.wang@huawei.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] kselftests: dmabuf-heaps: Ensure the driver name is null-terminated
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EAYHXXC3XEYRM4LWPGOYENWTIHOOQZT7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKdWwgOCwgMjAyNCBhdCA2OjQ34oCvQU0gWmVuZ2h1aSBZdSA8eXV6ZW5naHVpQGh1
YXdlaS5jb20+IHdyb3RlOg0KPg0KPiBFdmVuIGlmIGEgdmdlbSBkZXZpY2UgaXMgY29uZmlndXJl
ZCBpbiwgd2Ugd2lsbCBza2lwIHRoZSBpbXBvcnRfdmdlbV9mZCgpDQo+IHRlc3QgYWxtb3N0IGV2
ZXJ5IHRpbWUuDQo+DQo+ICAgVEFQIHZlcnNpb24gMTMNCj4gICAxLi4xMQ0KPiAgICMgVGVzdGlu
ZyBoZWFwOiBzeXN0ZW0NCj4gICAjID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PQ0KPiAgICMgVGVzdGluZyBhbGxvY2F0aW9uIGFuZCBpbXBvcnRpbmc6DQo+ICAgb2sgMSAj
IFNLSVAgQ291bGQgbm90IG9wZW4gdmdlbSAtMQ0KPg0KPiBUaGUgcHJvYmxlbSBpcyB0aGF0IHdl
IHVzZSB0aGUgRFJNX0lPQ1RMX1ZFUlNJT04gaW9jdGwgdG8gcXVlcnkgdGhlIGRyaXZlcg0KPiB2
ZXJzaW9uIGluZm9ybWF0aW9uIGJ1dCBsZWF2ZSB0aGUgbmFtZSBmaWVsZCBhIG5vbi1udWxsLXRl
cm1pbmF0ZWQgc3RyaW5nLg0KPiBUZXJtaW5hdGUgaXQgcHJvcGVybHkgdG8gYWN0dWFsbHkgdGVz
dCBhZ2FpbnN0IHRoZSB2Z2VtIGRldmljZS4NCg0KSG0geWVhaC4gTG9va3MgbGlrZSBkcm1fY29w
eV9maWVsZCByZXNldHMgdmVyc2lvbi5uYW1lIHRvIHRoZSBhY3R1YWwNCnNpemUgb2YgdGhlIG5h
bWUgaW4gdGhlIGNhc2Ugb2YgdHJ1bmNhdGlvbiwgc28gbWF5YmUgd29ydGggY2hlY2tpbmcNCnRo
YXQgdG9vIGluIGNhc2UgdGhlcmUgaXMgYSBuYW1lIGxpa2UgInZnZW1mb28iIHRoYXQgZ2V0cyBj
b252ZXJ0ZWQgdG8NCiJ2Z2VtXDAiIGJ5IHRoaXM/DQoNCj4NCj4gU2lnbmVkLW9mZi1ieTogWmVu
Z2h1aSBZdSA8eXV6ZW5naHVpQGh1YXdlaS5jb20+DQo+IC0tLQ0KPiAgdG9vbHMvdGVzdGluZy9z
ZWxmdGVzdHMvZG1hYnVmLWhlYXBzL2RtYWJ1Zi1oZWFwLmMgfCAyICsrDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspDQo+DQo+IGRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3Nl
bGZ0ZXN0cy9kbWFidWYtaGVhcHMvZG1hYnVmLWhlYXAuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2RtYWJ1Zi1oZWFwcy9kbWFidWYtaGVhcC5jDQo+IGluZGV4IDVmNTQxNTIyMzY0Zi4uMmZj
Yzc0OTk4ZmE5IDEwMDY0NA0KPiAtLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9kbWFidWYt
aGVhcHMvZG1hYnVmLWhlYXAuYw0KPiArKysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9kbWFi
dWYtaGVhcHMvZG1hYnVmLWhlYXAuYw0KPiBAQCAtMzIsNiArMzIsOCBAQCBzdGF0aWMgaW50IGNo
ZWNrX3ZnZW0oaW50IGZkKQ0KPiAgICAgICAgIGlmIChyZXQpDQo+ICAgICAgICAgICAgICAgICBy
ZXR1cm4gMDsNCj4NCj4gKyAgICAgICBuYW1lWzRdID0gJ1wwJzsNCj4gKw0KPiAgICAgICAgIHJl
dHVybiAhc3RyY21wKG5hbWUsICJ2Z2VtIik7DQo+ICB9DQo+DQo+IC0tDQo+IDIuMzMuMA0KPg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
