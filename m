Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J7g2JMAhVmq5zgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 13:47:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA2775411C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 13:47:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=oTqSdUGI;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9A89404D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 11:47:10 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	by lists.linaro.org (Postfix) with ESMTPS id 23919401B9
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 11:47:08 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-381018b9375so4684634a91.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 04:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784029627; x=1784634427; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=CQQ+xhhQTJIQk1G/3qoal2tftp25+Ya+e3y9IcyhICU=;
        b=oTqSdUGIZ+WIMDDFrfSCRXe6HC/Oyo0IDt2jO4u2hStQJ+fJmcG++LXbiUalvb5A9C
         v1TLnPqqbR3HUTfWpv9FsS7nKZz3QuRRgrumZdpUXUz10hlNvmQ2IVt6IBEhzEmFKWSf
         gZd74vIv+NmCRa2s4gsjIG+2vXDB7Um5ZdkNHRjBHH7xVRa2UxhrfZaXpDLqOuUwSevB
         Nkljp2k9YtA9uvlY3w6U3iUaTLkoUCiZRVF5QA+bbzhZQ1UzOcTyYYsToAEVkNnnWyD0
         TKP9SKnAAZAlNML+5p3wgylkSYQR27IEwl8XvLtxuhoEsS+nKsNCz+7CgBPlVHVN62mg
         b1qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784029627; x=1784634427;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CQQ+xhhQTJIQk1G/3qoal2tftp25+Ya+e3y9IcyhICU=;
        b=JQhj7tLh3h0panFErR2/Mdc91JePJQLR+gczZURMX41qASKFyl/6pWHn+UZ7kvqxsZ
         KYoKSX/h6oszHD9vALeQIah59FRfoCn6mQmQx/yAk7HRfAmOu5BJiVMLL43gIvej0tRb
         HpBCcJCRnyd/48F1dnlcqsbFn04Yipr2Jsc7h0CXAu12szcFpWuPkbeqB/I54lZzmspq
         dRFw+lljqcYwhQdFE8BIYaRS1XMdtE2bDT/hymrtB1YWPCJqApQ12yP/Y4LWukoGJSAQ
         few11jbxSkkHX4x05JreNpXv5KKJV1ZkvQ0iRlvD0u1qB3V/Phf23kiK7ht+KzPcF7VQ
         MyyQ==
X-Forwarded-Encrypted: i=1; AHgh+Rr/uGcSc57jcOBBBzuxwmhN+yBOWdTlL+utzXlKj6JcpNt4ffnlwbCU/TuD/wHeVSkej2v3RIR/8PNJh6O0@lists.linaro.org
X-Gm-Message-State: AOJu0YzvFCMknshD54iU8svvyIjDTtXrUaxfU7mcbB+EBbHWzhOqPnGx
	buNG9boijXaC3w5UV7bHqTNzUPwGoXaxWPwMpauYnVr5YZ25O41YdF2j
X-Gm-Gg: AfdE7cmMfkl/Dn9Sjzvu3dDCRzgxmG1FFkxtemFwq+yAde8PuyYtNwQP615laL9yRif
	M/Jj4xHiOF68ZERpHojrHLDhIIGSQq4328bbT6vW+x2uOpdoGjNIJJWgUPHT7SzM0By0kLsa/cH
	ldvIwK5iRDdWMjl9XpAXUZJ5Cx28C7Jbf+tn2eYFLRKbxqkoRk8W8ZAfOuTlK48ZfGXUhigw+Tz
	Mai4XMDElq6o6yeKO5tTN6zYQs3mRmH01XGJPaDD8pTyjQhVhKVkEgPKH4kqM5P3yTp+eukFKBB
	6D06onAnGbGOPeBj0eX3DRe9BSvDAx4UnPJ8w5DvRbuzGgCua8j6NyNrEwIvaqrFt08meXmY0UC
	YKWvPBjG6Wo7IZaJgflfmzob/Tmw6qqf04o26axu7JrI25KxAsgGZJfE0nF++VzvAlmNetFpmqG
	w5UlcyXTi7m54XCBEW
X-Received: by 2002:a17:90b:2c83:b0:380:f34a:6ff1 with SMTP id 98e67ed59e1d1-38dc75eb657mr11649534a91.17.1784029627050;
        Tue, 14 Jul 2026 04:47:07 -0700 (PDT)
Received: from baineng-pc.. ([117.133.183.252])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38e17470008sm1356162a91.17.2026.07.14.04.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 04:47:06 -0700 (PDT)
From: Baineng Shou <shoubaineng@gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"T . J . Mercier" <tjmercier@google.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	Sandeep Patil <sspatil@android.com>,
	"Andrew F . Davis" <afd@ti.com>,
	Srinivas Kandagatla <srini@kernel.org>
Date: Tue, 14 Jul 2026 19:46:52 +0800
Message-Id: <20260714114654.3885457-1-shoubaineng@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CABdmKX21NHc2=9Sk2F-BFpu6is0vTg-QXLE+wiFNEPdsWWjvog@mail.gmail.com>
References: <CABdmKX21NHc2=9Sk2F-BFpu6is0vTg-QXLE+wiFNEPdsWWjvog@mail.gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 55BYI2GGPN3KZ22EEIE2ZW2L6GUW3C2B
X-Message-ID-Hash: 55BYI2GGPN3KZ22EEIE2ZW2L6GUW3C2B
X-MailFrom: shoubaineng@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: stable@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, Baineng Shou <shoubaineng@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 0/2] dma-buf: fix fd leak when copy_to_user() fails after fd_install()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/55BYI2GGPN3KZ22EEIE2ZW2L6GUW3C2B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tjmercier@google.com,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:sspatil@android.com,m:afd@ti.com,m:srini@kernel.org,m:stable@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:shoubaineng@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0DA2775411C

U2V2ZXJhbCBkcml2ZXJzIGNhbGwgZG1hX2J1Zl9mZCgpIOKAlCB3aGljaCBpbnRlcm5hbGx5IGNh
bGxzIGZkX2luc3RhbGwoKQ0K4oCUIGJlZm9yZSBjb3B5X3RvX3VzZXIoKSByZXR1cm5zIHRoZSBm
ZCBudW1iZXIgdG8gdXNlcnNwYWNlLiAgSWYNCmNvcHlfdG9fdXNlcigpIGZhaWxzLCB0aGUgZmQg
aXMgYWxyZWFkeSBwdWJsaXNoZWQgaW4gdGhlIGNhbGxlcidzIGZkDQp0YWJsZSBidXQgdGhlIGlv
Y3RsIHJldHVybnMgYW4gZXJyb3IsIHNvIHVzZXJzcGFjZSBuZXZlciBsZWFybnMgdGhlIGZkDQpu
dW1iZXIuICBXb3JzZSwgdGhlIHdpbmRvdyBiZXR3ZWVuIGZkX2luc3RhbGwoKSBhbmQgY29weV90
b191c2VyKCkNCmFsbG93cyBvdGhlciB0aHJlYWRzIHRvIG9ic2VydmUgYW5kIG1hbmlwdWxhdGUg
dGhlIGZkIChkdXAsIGNsb3NlLA0KU0NNX1JJR0hUUyksIG1ha2luZyBhbnkgImNsb3NlIGl0IG9u
IHRoZSBmYWlsdXJlIHBhdGgiIGZpeCB1bnNhZmUuDQoNClRoZSBmaXggaXMgdG8gc3BsaXQgdGhl
IGFsbG9jYXRpb24gaW50byB0aHJlZSBzdGVwczogcmVzZXJ2ZSBhbiBmZCB3aXRoDQpnZXRfdW51
c2VkX2ZkX2ZsYWdzKCkgKG5vdCB5ZXQgdmlzaWJsZSB0byBvdGhlciB0aHJlYWRzKSwgZG8NCmNv
cHlfdG9fdXNlcigpLCBhbmQgb25seSB0aGVuIHB1Ymxpc2ggdGhlIGZkIHdpdGggZmRfaW5zdGFs
bCgpIHZpYSB0aGUNCm5ldyBkbWFfYnVmX2ZkX2luc3RhbGwoKSBoZWxwZXIuICBPbiBjb3B5X3Rv
X3VzZXIoKSBmYWlsdXJlLA0KcHV0X3VudXNlZF9mZCgpICsgZG1hX2J1Zl9wdXQoKSBjbGVhbmx5
IHVud2luZCB3aXRoIG5vIHVzZXItdmlzaWJsZQ0Kc2lkZSBlZmZlY3RzLg0KDQpQYXRjaCAxIGlu
dHJvZHVjZXMgZG1hX2J1Zl9mZF9pbnN0YWxsKCkgaW4gZG1hLWJ1Zi5jICh3cmFwcGluZw0KZmRf
aW5zdGFsbCgpIHRvZ2V0aGVyIHdpdGggdGhlIERNQV9CVUZfVFJBQ0UgY2FsbCB0byBwcmVzZXJ2
ZSBleHBvcnQNCnRyYWNpbmcpIGFuZCBhcHBsaWVzIHRoZSBmaXggdG8gZG1hLWhlYXAuDQoNClBh
dGNoIDIgYXBwbGllcyB0aGUgc2FtZSBmaXggdG8gZmFzdHJwYywgd2hpY2ggZXZlbiBoYWQgYSBj
b21tZW50DQphY2tub3dsZWRnaW5nIHRoZSBwcm9ibGVtIGNvdWxkIG5vdCBiZSBmaXhlZCBiZWZv
cmUuDQoNCnYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyNjA3MDMwODA5
MjIuMTgzODM2Mi0xLXNob3ViYWluZW5nQGdtYWlsLmNvbS8NCnYyOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9kcmktZGV2ZWwvMjAyNjA3MTAxMDU0MzAuMzA1OTY2MS0xLXNob3ViYWluZW5nQGdt
YWlsLmNvbS8NCg0KQ2hhbmdlcyBpbiB2MzoNCiAtIFNwbGl0IGludG8gdHdvIHBhdGNoZXMgKGRt
YS1oZWFwICsgZmFzdHJwYyBzZXBhcmF0ZWx5KQ0KIC0gQWRkIGRtYV9idWZfZmRfaW5zdGFsbCgp
IHRvIHByZXNlcnZlIHRyYWNlX2RtYV9idWZfZmQgdHJhY2Vwb2ludA0KICAgKHNwb3R0ZWQgYnkg
VC5KLiBNZXJjaWVyIGFuZCBzYXNoaWtvLWJvdCBvbiB2MikNCiAtIEFkZCBmYXN0cnBjIGZpeCB1
c2luZyB0aGUgbmV3IGhlbHBlciAoc3VnZ2VzdGVkIGJ5IFQuSi4gTWVyY2llcikNCg0KQmFpbmVu
ZyBTaG91ICgyKToNCiAgZG1hLWJ1ZjogZG1hLWhlYXA6IGRvbid0IHB1Ymxpc2ggZmQgYmVmb3Jl
IGNvcHlfdG9fdXNlcigpIHN1Y2NlZWRzDQogIG1pc2M6IGZhc3RycGM6IGRvbid0IHB1Ymxpc2gg
ZmQgYmVmb3JlIGNvcHlfdG9fdXNlcigpIHN1Y2NlZWRzDQoNCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jICB8IDIwICsrKysrKysrKysNCiBkcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyB8IDgw
ICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tDQogZHJpdmVycy9taXNjL2Zh
c3RycGMuYyAgICAgfCAxNiArKystLS0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgIHwg
IDEgKw0KIDQgZmlsZXMgY2hhbmdlZCwgNjcgaW5zZXJ0aW9ucygrKSwgNTAgZGVsZXRpb25zKC0p
DQoNCi0tIA0KMi4zNC4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
