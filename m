Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cv3QJUM9KGpOAwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 09 Jun 2026 18:20:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 044C9662498
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 09 Jun 2026 18:20:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=oBrdMRRX;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC32840A0E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Jun 2026 16:20:17 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id A4307409B3
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Jun 2026 16:20:08 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5aa62bd04fbso31132e87.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 09 Jun 2026 09:20:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781022007; cv=none;
        d=google.com; s=arc-20240605;
        b=ltRt7irFEON63yAUv50bX7PAfDcj5cp+7yrO90vnUQsNdY1yyZ8u9jxKegmxnbHtb6
         1lYVLYxXiwLavQpuKZGuqDno5G62aiBKWAe+I1nyiv6RKyXVwb7IW348QpoeW5mG4Jxw
         BcFFXmtbCScj4bsaEdOBWhv6yD/n9X9D77nbIw4t1OU0dBLYji8ctkabUa6cMxdPVLLq
         thkcLawc487g1Dx7w8v4hvNHuvMw67eO/YxBfotmf99P06VlVVTWWasCR2HNSXKbpKOE
         tu8al7B4mi21r3CLDa0ViCJIcchvdIOi6r6gEoD6ykhfZmzCKbd+Bbz+Tv+qkxfaXEJX
         yfWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pFgomi7XLhEYHICeogk3tk52w0iSafmEFBcU9HzZqyE=;
        fh=OszQJDYkvZ2NupyqTKZXqPBcwvjN5S/ub2cOrFhY8xk=;
        b=anI1zh2OJmY/cRmEnyrPtF7J5YLQtw4+KXE71GpV176vXmLZ6yvRy2SMn2IqYL3I2T
         JpLlzx58VElZ5c02cvpyjHmfHVZOMX/eoRbG1J4r+jENBGbJkDCiMUbdp3yEAcPvQBeN
         871IpwPdmWkxI/WD8Al+gQ+QpMNK4RugTkgnMrY8wWiszy3BriAIObGUa0K3lI5OLNfo
         XUHkwVFLtcWePkIU08hwnhURvjGPmPe6I7/pTYSJGmietRWcbfOKcf7Q6gjA3UbDjDdu
         Jrw6icYYZ3TRPNBLecfObiR88E/5ysfxgJp4nEpovYiR/YxykLO8Kx8fwjEBxLIXFadT
         N0pQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781022007; x=1781626807; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pFgomi7XLhEYHICeogk3tk52w0iSafmEFBcU9HzZqyE=;
        b=oBrdMRRXns9mfimg0INMzQ8uTLXs/8qEQapYsQrg13nj+XSj/b4kdkBjve0/vl5oIC
         GvVCff/ZcX4s41BZfDplgwwnTRzjJINoipxcApC7QYWpjJLizKKIO1zXdJ/zFMEQ43aU
         ehffQ5yAX2YhoIDJxOWW8XYyWhWWAbO78vkgoerw/rC4sfYsEOvk1hjcEskB0i58NOex
         qibWlKGCY/kk0zLHKQbvNywh5D/Aly5ixFqstjw7FU3dRU4i2VpF1yalo90tJXPMAwiL
         9ywOfTNPvS9u/262oIeZzcPBpF/pXIpgRSuSBLXEbnWS8biO3QfTgC9BSCP9m2bVVlTR
         d1Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781022007; x=1781626807;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pFgomi7XLhEYHICeogk3tk52w0iSafmEFBcU9HzZqyE=;
        b=eo+kG8JqNAJgq9dG555iXHwV6FYGpcq1EgpdC/mibfFRWJmB8KV4Ua4ae1sBjtu6cW
         dvDQoUIbFbmr/HJO4jo9Sh58Gx3y/o4mh0QF+5PV5Lt7DhIK1nEPPr9ZIq5NO+6IwniC
         geupbT3xjdiB7cQDADwBMGv85W/UyxVADXz7/G7/9f9hidvWwjMK81KxP4L8PoDwLYuB
         +yIWdZwcwKqI91H+XHpeEEDmcWq6P1sPrP/r1SIpJvyle3SBoj7cN4Vh52g0MyTi9TgL
         tE+hmrqzzA/4mQ0o80ZsUE96r87u5lRLkheA5luW1yLXj+yEnlXOEcN3mjbNX1ir5dd0
         aPdw==
X-Forwarded-Encrypted: i=1; AFNElJ+zghUTK2S9kPjDfTti0p1uszVDjN3rl0UBo1F3YEAQgxB8HdiFZFpy8kHMp+uRf5O7x6rtvMrnK1nWsPUc@lists.linaro.org
X-Gm-Message-State: AOJu0YxeAnzJz1PXXegbiSEMSYFho6w9nT1ExjrqgroYkQbwdcPbxj4U
	nS7nrYD1/Ycu8TDVaOJPchzhrzh/B59jNgOJsWnk5bHTeesWUJ1qhZPodqHY25I9+TqvOgYuoT/
	GduOH9tP3uiCmjb1G1hy7+O378gf7nrzNvVwQYt0=
X-Gm-Gg: Acq92OF0AH2uz1aFveeHhEE2+Zs9AZ7rtPQ6bJYmfziIriHbGA+aorZMC4zPQ1jjPGC
	efOfTSD9P65a6yL/0B4OBcxteu4yG475IyKqnWVFIqfKsUyPpk1pXPf8+d9eEA/sp3JfIv6r7Ld
	bMEY0BDeluozM66gvmnN3K8SIzVkKp1YySeHSJhJscbSfdqbXNQRcWlkHfARDXzot9PratRbnMy
	htS7ncaXlzmWXzLVpUOwMDa+NCqs1d662JaJPeaoWNf9Yn2xtIWbFKOhRlgejjLTMuNfmnF3km1
	kN9gr1mui0MHX0qRTUUmpn+cNR4Mzf4o80qvFu21VfjykdkNzyXaE40+NQ==
X-Received: by 2002:a05:6512:33ce:b0:5aa:883f:5da6 with SMTP id
 2adb3069b0e04-5aa8864f3c8mr624107e87.13.1781022006976; Tue, 09 Jun 2026
 09:20:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260608194321.150838-1-xuehaohu@google.com> <20260609072234.GB327369@unreal>
In-Reply-To: <20260609072234.GB327369@unreal>
From: David Hu <xuehaohu@google.com>
Date: Tue, 9 Jun 2026 12:19:54 -0400
X-Gm-Features: AVVi8CfbRleRRxp7xUhMkzyUOKJRPcnke7OqLp1gc287gSv21XbS3wDiRLvDI1I
Message-ID: <CAPd9Lg8OtW+qekntqcuL_Yz97=e9bD1gacbyB5uQijL6FpFqYw@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: 57ZALWPJSNDXUCZR4M54KFCEB3V3BVGU
X-Message-ID-Hash: 57ZALWPJSNDXUCZR4M54KFCEB3V3BVGU
X-MailFrom: xuehaohu@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/57ZALWPJSNDXUCZR4M54KFCEB3V3BVGU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:leon@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 044C9662498

T24gVHVlLCBKdW4gOSwgMjAyNiBhdCAzOjIy4oCvQU0gTGVvbiBSb21hbm92c2t5IDxsZW9uQGtl
cm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBNb24sIEp1biAwOCwgMjAyNiBhdCAwNzo0MzoyMVBN
ICswMDAwLCBEYXZpZCBIdSB3cm90ZToNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYtbWFwcGluZy5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtbWFwcGluZy5jDQo+
ID4gaW5kZXggNzk0YWNmZjI1NDZhLi42N2E4ZmY1MmZiOGYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYtbWFwcGluZy5jDQo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYtbWFwcGluZy5jDQo+ID4gQEAgLTQwLDggKzQxLDExIEBAIHN0YXRpYyB1bnNpZ25l
ZCBpbnQgY2FsY19zZ19uZW50cyhzdHJ1Y3QgZG1hX2lvdmFfc3RhdGUgKnN0YXRlLA0KPiA+ICAg
ICAgIHNpemVfdCBpOw0KPiA+DQo+ID4gICAgICAgaWYgKCFzdGF0ZSB8fCAhZG1hX3VzZV9pb3Zh
KHN0YXRlKSkgew0KPiA+IC0gICAgICAgICAgICAgZm9yIChpID0gMDsgaSA8IG5yX3Jhbmdlczsg
aSsrKQ0KPiA+IC0gICAgICAgICAgICAgICAgICAgICBuZW50cyArPSBESVZfUk9VTkRfVVAocGh5
c192ZWNbaV0ubGVuLCBVSU5UX01BWCk7DQo+ID4gKyAgICAgICAgICAgICBmb3IgKGkgPSAwOyBp
IDwgbnJfcmFuZ2VzOyBpKyspIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQg
aW50IGFkZGVkID0gRElWX1JPVU5EX1VQKHBoeXNfdmVjW2ldLmxlbiwgVUlOVF9NQVgpOw0KPiA+
ICsgICAgICAgICAgICAgICAgICAgICBpZiAoY2hlY2tfYWRkX292ZXJmbG93KG5lbnRzLCBhZGRl
ZCwgJm5lbnRzKSkNCj4NCj4gQW4gYWRkaXRpb25hbCBibGFuayBsaW5lIHNob3VsZCBiZSBpbnNl
cnRlZCBiZXR3ZWVuIHZhcmlhYmxlIGluaXRpYWxpemF0aW9uDQo+IGFuZCB0aGUgc3Vic2VxdWVu
dCBjb2RlIGJsb2NrLg0KPg0KPiBBc2lkZSBmcm9tIHRoYXQsDQo+IFJldmlld2VkLWJ5OiBMZW9u
IFJvbWFub3Zza3kgPGxlb25Aa2VybmVsLm9yZz4NCg0KVGhhbmsgeW91LCBMZW9uLCBmb3IgdGhl
IHJldmlldyBhbmQgZm9yIGNhdGNoaW5nIHRoZSBmb3JtYXR0aW5nDQpkZXRhaWwuIEknbGwgYWRk
IGEgYmxhbmsgbGluZSwgaW5jbHVkZSB5b3VyIFJldmlld2VkLWJ5IHRhZywgYW5kIHNlbmQNCm91
dCB2NyBzaG9ydGx5Lg0KDQpSZWdhcmRzLA0KRGF2aWQNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
