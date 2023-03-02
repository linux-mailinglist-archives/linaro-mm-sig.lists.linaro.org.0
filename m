Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0333E6A8D8E
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 00:54:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0803640E18
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Mar 2023 23:54:39 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by lists.linaro.org (Postfix) with ESMTPS id C9AEA3F205
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Mar 2023 23:54:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b="aY/t7j93";
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.47 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id bo22so795037pjb.4
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Mar 2023 15:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677801241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MNK4EAXE449Ce2l3n69cjKEqV9oops58mW8yuHdnCzs=;
        b=aY/t7j93xxdOs7JmfvKvArQyIm33WCAYc9L+FBv/Rd7ysY8N1rZ4CqWMXGq1UDhlp0
         5oMd893ch1N87bbsjm2NNRviy/GBwCXG9iDVnw+mdgvjB5ZzJV9GV6gKi+Stesyyw2ZM
         4hpTQEcQqoPeb9dwFhg93/IZWzQgAECSPpLRZIo/DO166N6Fu6j1HnMaN7v2rX1yqGXZ
         UvCy8ykM2T1+WkJ9Y9uVr/dePQcyOlIHgsWw2z+DyrekmjjMjDdXb9ynepJ3bO3oE3TB
         ZW7sMPO4fmKKzIM/C+9wbXqvhroBsfQfckZq1FbkchaU2nvKVkuyEy+a+inJVb7Umw1V
         hxqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677801241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MNK4EAXE449Ce2l3n69cjKEqV9oops58mW8yuHdnCzs=;
        b=mCW/nj/v4BgeNfWH7lfn9OCZvUUrYqE6TJJKPnTRHYOBjvpvd1kANi5Le/uLgluEJX
         eO/9o/mxyMUFDN9cw7T76y4zFR1DsFSRsn/PesMKz6L6TzbK/0+u5eRgJFh4cabmNOSQ
         AgxlOjTiOiQW2fJm05y8gupCKojgZ2K8PRRPb91lSHDNtXcOvLY9y+Z+i+ykyyFrbHb4
         6olLK7MPRO0uAP2BDvnw19zpVwnxLirmh+InvSjQ1iIUx/cb9heo4kWlfpoQWpJYCsNl
         DrxB4u7jK2SQBYM5WOmo2ZqkuoM9ThClGOa5gUml2Bs6mrUWLW+h9poX83hPv8qE9TEh
         vjAA==
X-Gm-Message-State: AO0yUKUC91sanSDRoG73b8RX9VPJwM2mhNstT+QYHGheJeHAA5XER1fd
	PsJ3BbdQJDnvdNnOPu0XDbo=
X-Google-Smtp-Source: AK7set/F6PBmFSHbT23NnNbCBzYLCIvIAQzxnHQvkvk9MfRxtNHvyFRXboh+FUIUlLOu7i03hSI/cw==
X-Received: by 2002:a17:902:f801:b0:19a:aaac:f4d1 with SMTP id ix1-20020a170902f80100b0019aaaacf4d1mr3023868plb.13.1677801240810;
        Thu, 02 Mar 2023 15:54:00 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id t4-20020a170902a5c400b0019602274208sm211584plq.186.2023.03.02.15.54.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Mar 2023 15:54:00 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Thu,  2 Mar 2023 15:53:23 -0800
Message-Id: <20230302235356.3148279-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230302235356.3148279-1-robdclark@gmail.com>
References: <20230302235356.3148279-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C9AEA3F205
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.47:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,collabora.com,linaro.org,lwn.net,padovan.org,vger.kernel.org,lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 7HIFXMUXKDTEC3XB5LZRHYSI4PFGVPIY
X-Message-ID-Hash: 7HIFXMUXKDTEC3XB5LZRHYSI4PFGVPIY
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Pekka Paalanen <pekka.paalanen@collabora.com>, Bagas Sanjaya <bagasdotme@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Gustavo Padovan <gustavo@padovan.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v9 01/15] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7HIFXMUXKDTEC3XB5LZRHYSI4PFGVPIY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpBZGQgYSB3YXkgdG8g
aGludCB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgb2YgYW4gdXBjb21pbmcgZGVhZGxpbmUsIHN1Y2gg
YXMNCnZibGFuaywgd2hpY2ggdGhlIGZlbmNlIHdhaXRlciB3b3VsZCBwcmVmZXIgbm90IHRvIG1p
c3MuICBUaGlzIGlzIHRvIGFpZA0KdGhlIGZlbmNlIHNpZ25hbGVyIGluIG1ha2luZyBwb3dlciBt
YW5hZ2VtZW50IGRlY2lzaW9ucywgbGlrZSBib29zdGluZw0KZnJlcXVlbmN5IGFzIHRoZSBkZWFk
bGluZSBhcHByb2FjaGVzIGFuZCBhd2FyZW5lc3Mgb2YgbWlzc2luZyBkZWFkbGluZXMNCnNvIHRo
YXQgY2FuIGJlIGZhY3RvcmVkIGluIHRvIHRoZSBmcmVxdWVuY3kgc2NhbGluZy4NCg0KdjI6IERy
b3AgZG1hX2ZlbmNlOjpkZWFkbGluZSBhbmQgcmVsYXRlZCBsb2dpYyB0byBmaWx0ZXIgZHVwbGlj
YXRlDQogICAgZGVhZGxpbmVzLCB0byBhdm9pZCBpbmNyZWFzaW5nIGRtYV9mZW5jZSBzaXplLiAg
VGhlIGZlbmNlLWNvbnRleHQNCiAgICBpbXBsZW1lbnRhdGlvbiB3aWxsIG5lZWQgc2ltaWxhciBs
b2dpYyB0byB0cmFjayBkZWFkbGluZXMgb2YgYWxsDQogICAgdGhlIGZlbmNlcyBvbiB0aGUgc2Ft
ZSB0aW1lbGluZS4gIFtja29lbmlnXQ0KdjM6IENsYXJpZnkgbG9ja2luZyB3cnQuIHNldF9kZWFk
bGluZSBjYWxsYmFjaw0KdjQ6IENsYXJpZnkgaW4gZG9jcyBjb21tZW50IHRoYXQgdGhpcyBpcyBh
IGhpbnQNCnY1OiBEcm9wIERNQV9GRU5DRV9GTEFHX0hBU19ERUFETElORV9CSVQuDQp2NjogTW9y
ZSBkb2NzDQp2NzogRml4IHR5cG8sIGNsYXJpZnkgcGFzdCBkZWFkbGluZXMNCg0KU2lnbmVkLW9m
Zi1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KUmV2aWV3ZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkFja2VkLWJ5OiBQZWtr
YSBQYWFsYW5lbiA8cGVra2EucGFhbGFuZW5AY29sbGFib3JhLmNvbT4NClJldmlld2VkLWJ5OiBC
YWdhcyBTYW5qYXlhIDxiYWdhc2RvdG1lQGdtYWlsLmNvbT4NCi0tLQ0KIERvY3VtZW50YXRpb24v
ZHJpdmVyLWFwaS9kbWEtYnVmLnJzdCB8ICA2ICsrKw0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYyAgICAgICAgICB8IDU5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysNCiBpbmNsdWRl
L2xpbnV4L2RtYS1mZW5jZS5oICAgICAgICAgICAgfCAyMiArKysrKysrKysrKw0KIDMgZmlsZXMg
Y2hhbmdlZCwgODcgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
cml2ZXItYXBpL2RtYS1idWYucnN0IGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYu
cnN0DQppbmRleCA2MjJiODE1NmQyMTIuLjE4M2U0ODBkOGNlYSAxMDA2NDQNCi0tLSBhL0RvY3Vt
ZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdA0KKysrIGIvRG9jdW1lbnRhdGlvbi9kcml2
ZXItYXBpL2RtYS1idWYucnN0DQpAQCAtMTY0LDYgKzE2NCwxMiBAQCBETUEgRmVuY2UgU2lnbmFs
bGluZyBBbm5vdGF0aW9ucw0KIC4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMNCiAgICA6ZG9jOiBmZW5jZSBzaWduYWxsaW5nIGFubm90YXRpb24NCiANCitETUEgRmVu
Y2UgRGVhZGxpbmUgSGludHMNCit+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4NCisNCisuLiBrZXJu
ZWwtZG9jOjogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQorICAgOmRvYzogZGVhZGxpbmUg
aGludHMNCisNCiBETUEgRmVuY2VzIEZ1bmN0aW9ucyBSZWZlcmVuY2UNCiB+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn4NCiANCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCmluZGV4IDBkZTA0ODJjZDM2ZS4u
ZjE3N2M1NjI2OWJiIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQor
KysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCkBAIC05MTIsNiArOTEyLDY1IEBAIGRt
YV9mZW5jZV93YWl0X2FueV90aW1lb3V0KHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZXMsIHVpbnQz
Ml90IGNvdW50LA0KIH0NCiBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV93YWl0X2FueV90aW1lb3V0
KTsNCiANCisvKioNCisgKiBET0M6IGRlYWRsaW5lIGhpbnRzDQorICoNCisgKiBJbiBhbiBpZGVh
bCB3b3JsZCwgaXQgd291bGQgYmUgcG9zc2libGUgdG8gcGlwZWxpbmUgYSB3b3JrbG9hZCBzdWZm
aWNpZW50bHkNCisgKiB0aGF0IGEgdXRpbGl6YXRpb24gYmFzZWQgZGV2aWNlIGZyZXF1ZW5jeSBn
b3Zlcm5vciBjb3VsZCBhcnJpdmUgYXQgYSBtaW5pbXVtDQorICogZnJlcXVlbmN5IHRoYXQgbWVl
dHMgdGhlIHJlcXVpcmVtZW50cyBvZiB0aGUgdXNlLWNhc2UsIGluIG9yZGVyIHRvIG1pbmltaXpl
DQorICogcG93ZXIgY29uc3VtcHRpb24uICBCdXQgaW4gdGhlIHJlYWwgd29ybGQgdGhlcmUgYXJl
IG1hbnkgd29ya2xvYWRzIHdoaWNoDQorICogZGVmeSB0aGlzIGlkZWFsLiAgRm9yIGV4YW1wbGUs
IGJ1dCBub3QgbGltaXRlZCB0bzoNCisgKg0KKyAqICogV29ya2xvYWRzIHRoYXQgcGluZy1wb25n
IGJldHdlZW4gZGV2aWNlIGFuZCBDUFUsIHdpdGggYWx0ZXJuYXRpbmcgcGVyaW9kcw0KKyAqICAg
b2YgQ1BVIHdhaXRpbmcgZm9yIGRldmljZSwgYW5kIGRldmljZSB3YWl0aW5nIG9uIENQVS4gIFRo
aXMgY2FuIHJlc3VsdCBpbg0KKyAqICAgZGV2ZnJlcSBhbmQgY3B1ZnJlcSBzZWVpbmcgaWRsZSB0
aW1lIGluIHRoZWlyIHJlc3BlY3RpdmUgZG9tYWlucyBhbmQgaW4NCisgKiAgIHJlc3VsdCByZWR1
Y2UgZnJlcXVlbmN5Lg0KKyAqDQorICogKiBXb3JrbG9hZHMgdGhhdCBpbnRlcmFjdCB3aXRoIGEg
cGVyaW9kaWMgdGltZSBiYXNlZCBkZWFkbGluZSwgc3VjaCBhcyBkb3VibGUNCisgKiAgIGJ1ZmZl
cmVkIEdQVSByZW5kZXJpbmcgdnMgdmJsYW5rIHN5bmMnZCBwYWdlIGZsaXBwaW5nLiAgSW4gdGhp
cyBzY2VuYXJpbywNCisgKiAgIG1pc3NpbmcgYSB2YmxhbmsgZGVhZGxpbmUgcmVzdWx0cyBpbiBh
biAqaW5jcmVhc2UqIGluIGlkbGUgdGltZSBvbiB0aGUgR1BVDQorICogICAoc2luY2UgaXQgaGFz
IHRvIHdhaXQgYW4gYWRkaXRpb25hbCB2YmxhbmsgcGVyaW9kKSwgc2VuZGluZyBhIHNpZ25hbCB0
bw0KKyAqICAgdGhlIEdQVSdzIGRldmZyZXEgdG8gcmVkdWNlIGZyZXF1ZW5jeSwgd2hlbiBpbiBm
YWN0IHRoZSBvcHBvc2l0ZSBpcyB3aGF0IGlzDQorICogICBuZWVkZWQuDQorICoNCisgKiBUbyB0
aGlzIGVuZCwgZGVhZGxpbmUgaGludChzKSBjYW4gYmUgc2V0IG9uIGEgJmRtYV9mZW5jZSB2aWEg
JmRtYV9mZW5jZV9zZXRfZGVhZGxpbmUuDQorICogVGhlIGRlYWRsaW5lIGhpbnQgcHJvdmlkZXMg
YSB3YXkgZm9yIHRoZSB3YWl0aW5nIGRyaXZlciwgb3IgdXNlcnNwYWNlLCB0bw0KKyAqIGNvbnZl
eSBhbiBhcHByb3ByaWF0ZSBzZW5zZSBvZiB1cmdlbmN5IHRvIHRoZSBzaWduYWxpbmcgZHJpdmVy
Lg0KKyAqDQorICogQSBkZWFkbGluZSBoaW50IGlzIGdpdmVuIGluIGFic29sdXRlIGt0aW1lIChD
TE9DS19NT05PVE9OSUMgZm9yIHVzZXJzcGFjZQ0KKyAqIGZhY2luZyBBUElzKS4gIFRoZSB0aW1l
IGNvdWxkIGVpdGhlciBiZSBzb21lIHBvaW50IGluIHRoZSBmdXR1cmUgKHN1Y2ggYXMNCisgKiB0
aGUgdmJsYW5rIGJhc2VkIGRlYWRsaW5lIGZvciBwYWdlLWZsaXBwaW5nLCBvciB0aGUgc3RhcnQg
b2YgYSBjb21wb3NpdG9yJ3MNCisgKiBjb21wb3NpdGlvbiBjeWNsZSksIG9yIHRoZSBjdXJyZW50
IHRpbWUgdG8gaW5kaWNhdGUgYW4gaW1tZWRpYXRlIGRlYWRsaW5lDQorICogaGludCAoSWUuIGZv
cndhcmQgcHJvZ3Jlc3MgY2Fubm90IGJlIG1hZGUgdW50aWwgdGhpcyBmZW5jZSBpcyBzaWduYWxl
ZCkuDQorICoNCisgKiBNdWx0aXBsZSBkZWFkbGluZXMgbWF5IGJlIHNldCBvbiBhIGdpdmVuIGZl
bmNlLCBldmVuIGluIHBhcmFsbGVsLiAgU2VlIHRoZQ0KKyAqIGRvY3VtZW50YXRpb24gZm9yICZk
bWFfZmVuY2Vfb3BzLnNldF9kZWFkbGluZS4NCisgKg0KKyAqIFRoZSBkZWFkbGluZSBoaW50IGlz
IGp1c3QgdGhhdCwgYSBoaW50LiAgVGhlIGRyaXZlciB0aGF0IGNyZWF0ZWQgdGhlIGZlbmNlDQor
ICogbWF5IHJlYWN0IGJ5IGluY3JlYXNpbmcgZnJlcXVlbmN5LCBtYWtpbmcgZGlmZmVyZW50IHNj
aGVkdWxpbmcgY2hvaWNlcywgZXRjLg0KKyAqIE9yIGRvaW5nIG5vdGhpbmcgYXQgYWxsLg0KKyAq
Lw0KKw0KKy8qKg0KKyAqIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUgLSBzZXQgZGVzaXJlZCBmZW5j
ZS13YWl0IGRlYWRsaW5lIGhpbnQNCisgKiBAZmVuY2U6ICAgIHRoZSBmZW5jZSB0aGF0IGlzIHRv
IGJlIHdhaXRlZCBvbg0KKyAqIEBkZWFkbGluZTogdGhlIHRpbWUgYnkgd2hpY2ggdGhlIHdhaXRl
ciBob3BlcyBmb3IgdGhlIGZlbmNlIHRvIGJlDQorICogICAgICAgICAgICBzaWduYWxlZA0KKyAq
DQorICogR2l2ZSB0aGUgZmVuY2Ugc2lnbmFsZXIgYSBoaW50IGFib3V0IGFuIHVwY29taW5nIGRl
YWRsaW5lLCBzdWNoIGFzDQorICogdmJsYW5rLCBieSB3aGljaCBwb2ludCB0aGUgd2FpdGVyIHdv
dWxkIHByZWZlciB0aGUgZmVuY2UgdG8gYmUNCisgKiBzaWduYWxlZCBieS4gIFRoaXMgaXMgaW50
ZW5kZWQgdG8gZ2l2ZSBmZWVkYmFjayB0byB0aGUgZmVuY2Ugc2lnbmFsZXINCisgKiB0byBhaWQg
aW4gcG93ZXIgbWFuYWdlbWVudCBkZWNpc2lvbnMsIHN1Y2ggYXMgYm9vc3RpbmcgR1BVIGZyZXF1
ZW5jeQ0KKyAqIGlmIGEgcGVyaW9kaWMgdmJsYW5rIGRlYWRsaW5lIGlzIGFwcHJvYWNoaW5nIGJ1
dCB0aGUgZmVuY2UgaXMgbm90DQorICogeWV0IHNpZ25hbGVkLi4NCisgKi8NCit2b2lkIGRtYV9m
ZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxp
bmUpDQorew0KKwlpZiAoZmVuY2UtPm9wcy0+c2V0X2RlYWRsaW5lICYmICFkbWFfZmVuY2VfaXNf
c2lnbmFsZWQoZmVuY2UpKQ0KKwkJZmVuY2UtPm9wcy0+c2V0X2RlYWRsaW5lKGZlbmNlLCBkZWFk
bGluZSk7DQorfQ0KK0VYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX3NldF9kZWFkbGluZSk7DQorDQog
LyoqDQogICogZG1hX2ZlbmNlX2Rlc2NyaWJlIC0gRHVtcCBmZW5jZSBkZXNjcmlidGlvbiBpbnRv
IHNlcV9maWxlDQogICogQGZlbmNlOiB0aGUgNmZlbmNlIHRvIGRlc2NyaWJlDQpkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgN
CmluZGV4IDc3NWNkYzBiNGYyNC4uZDU0YjU5NWEwZmUwIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KQEAgLTI1
Nyw2ICsyNTcsMjYgQEAgc3RydWN0IGRtYV9mZW5jZV9vcHMgew0KIAkgKi8NCiAJdm9pZCAoKnRp
bWVsaW5lX3ZhbHVlX3N0cikoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQogCQkJCSAgIGNoYXIg
KnN0ciwgaW50IHNpemUpOw0KKw0KKwkvKioNCisJICogQHNldF9kZWFkbGluZToNCisJICoNCisJ
ICogQ2FsbGJhY2sgdG8gYWxsb3cgYSBmZW5jZSB3YWl0ZXIgdG8gaW5mb3JtIHRoZSBmZW5jZSBz
aWduYWxlciBvZg0KKwkgKiBhbiB1cGNvbWluZyBkZWFkbGluZSwgc3VjaCBhcyB2YmxhbmssIGJ5
IHdoaWNoIHBvaW50IHRoZSB3YWl0ZXINCisJICogd291bGQgcHJlZmVyIHRoZSBmZW5jZSB0byBi
ZSBzaWduYWxlZCBieS4gIFRoaXMgaXMgaW50ZW5kZWQgdG8NCisJICogZ2l2ZSBmZWVkYmFjayB0
byB0aGUgZmVuY2Ugc2lnbmFsZXIgdG8gYWlkIGluIHBvd2VyIG1hbmFnZW1lbnQNCisJICogZGVj
aXNpb25zLCBzdWNoIGFzIGJvb3N0aW5nIEdQVSBmcmVxdWVuY3kuDQorCSAqDQorCSAqIFRoaXMg
aXMgY2FsbGVkIHdpdGhvdXQgJmRtYV9mZW5jZS5sb2NrIGhlbGQsIGl0IGNhbiBiZSBjYWxsZWQN
CisJICogbXVsdGlwbGUgdGltZXMgYW5kIGZyb20gYW55IGNvbnRleHQuICBMb2NraW5nIGlzIHVw
IHRvIHRoZSBjYWxsZWUNCisJICogaWYgaXQgaGFzIHNvbWUgc3RhdGUgdG8gbWFuYWdlLiAgSWYg
bXVsdGlwbGUgZGVhZGxpbmVzIGFyZSBzZXQsDQorCSAqIHRoZSBleHBlY3RhdGlvbiBpcyB0byB0
cmFjayB0aGUgc29vbmVzdCBvbmUuICBJZiB0aGUgZGVhZGxpbmUgaXMNCisJICogYmVmb3JlIHRo
ZSBjdXJyZW50IHRpbWUsIGl0IHNob3VsZCBiZSBpbnRlcnByZXRlZCBhcyBhbiBpbW1lZGlhdGUN
CisJICogZGVhZGxpbmUuDQorCSAqDQorCSAqIFRoaXMgY2FsbGJhY2sgaXMgb3B0aW9uYWwuDQor
CSAqLw0KKwl2b2lkICgqc2V0X2RlYWRsaW5lKShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3Rp
bWVfdCBkZWFkbGluZSk7DQogfTsNCiANCiB2b2lkIGRtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KQEAgLTU4Myw2
ICs2MDMsOCBAQCBzdGF0aWMgaW5saW5lIHNpZ25lZCBsb25nIGRtYV9mZW5jZV93YWl0KHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlLCBib29sIGludHIpDQogCXJldHVybiByZXQgPCAwID8gcmV0IDog
MDsNCiB9DQogDQordm9pZCBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlLCBrdGltZV90IGRlYWRsaW5lKTsNCisNCiBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVu
Y2VfZ2V0X3N0dWIodm9pZCk7DQogc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2FsbG9jYXRl
X3ByaXZhdGVfc3R1Yih2b2lkKTsNCiB1NjQgZG1hX2ZlbmNlX2NvbnRleHRfYWxsb2ModW5zaWdu
ZWQgbnVtKTsNCi0tIA0KMi4zOS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
