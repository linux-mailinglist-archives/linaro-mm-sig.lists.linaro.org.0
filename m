Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEnxIbBADGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:51:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D47357CDAB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:51:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A6E9406A1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:51:27 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 83C9A3F79E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 06:15:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=CwwykzXw;
	spf=pass (lists.linaro.org: domain of devnull+ekansh.gupta.oss.qualcomm.com@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=devnull+ekansh.gupta.oss.qualcomm.com@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B0F8A445C1;
	Tue, 19 May 2026 06:15:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7676CC2BCFF;
	Tue, 19 May 2026 06:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779171355;
	bh=KexM3eDN+KFrqp/9v9zldhIthZNWcYOK9d96tUxijLg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=CwwykzXwRBIsQbNaJjtwkd8Sux/m7LRhFojGX5Sd4INtveJafeaDDhPCMzMOPRhBm
	 NfKnJsPtFVzGajbThbnQkOHj4Vbw7eWone6BN4aK2J/hEG7xHWwpZ5BTKPwnOLTPss
	 28ICxQSxiiJ92rjr4kcfaH5txT2sQwYxQJEkFBH8gHvj0axMsVB+zOP1FcHNFCCFGR
	 Us0qHcMh6OIPVW14p56E6QkRcx/5nLKlxYmaX3KA8IsKgD2vRSFp2CpID7+EcFdG1M
	 r5SSzTJp0bJoLScVPNVJyVwt4edwJwXisarYUhhOucZ8rglvcAAxK8fNseF+pI3CqB
	 srFnxOoRKsxKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D919CD4851;
	Tue, 19 May 2026 06:15:55 +0000 (UTC)
From: Ekansh Gupta via B4 Relay <devnull+ekansh.gupta.oss.qualcomm.com@kernel.org>
Date: Tue, 19 May 2026 11:45:54 +0530
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20260519-qda-series-v1-4-b2d984c297f8@oss.qualcomm.com>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
In-Reply-To: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
To: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779171352; l=6291;
 i=ekansh.gupta@oss.qualcomm.com; s=20260223; h=from:subject:message-id;
 bh=aL7Q8kX8EN5MN2nmToCpPMht6Mh43LKYJcsO1FMcoBk=;
 b=9gZyuC9sX+2+l73JrnFAjjCd2y/5yVVQSJHOJRSTkOyRmr98wS2QFszHlzrywKiXEYnsDaWnc
 PmdCKZc/7APDHgDedYTSVv0Z9lA7wV0f5FQpf7LiDP8esmYAkTjIZ9M
X-Developer-Key: i=ekansh.gupta@oss.qualcomm.com; a=ed25519;
 pk=n0SepARizye+pYjhjg1RA5J+Nq4+IJbyRcBybU+/ERQ=
X-Endpoint-Received: by B4 Relay for ekansh.gupta@oss.qualcomm.com/20260223
 with auth_id=647
X-Original-From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Spamd-Bar: ----
X-MailFrom: devnull+ekansh.gupta.oss.qualcomm.com@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YECE33RURP6CP4MZAEG6FUHAIDFY43VB
X-Message-ID-Hash: YECE33RURP6CP4MZAEG6FUHAIDFY43VB
X-Mailman-Approved-At: Tue, 19 May 2026 10:49:57 +0000
CC: Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, dmitry.baryshkov@oss.qualcomm.com, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: ekansh.gupta@oss.qualcomm.com
Subject: [Linaro-mm-sig] [PATCH 04/15] accel/qda: Add compute bus for QDA context banks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YECE33RURP6CP4MZAEG6FUHAIDFY43VB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de,ekansh.gupta.oss.qualcomm.com];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	HAS_REPLYTO(0.00)[ekansh.gupta@oss.qualcomm.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:replyto,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,qualcomm.com:email]
X-Rspamd-Queue-Id: 0D47357CDAB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RnJvbTogRWthbnNoIEd1cHRhIDxla2Fuc2guZ3VwdGFAb3NzLnF1YWxjb21tLmNvbT4NCg0KSW50
cm9kdWNlIGEgY3VzdG9tIHZpcnR1YWwgYnVzIChxZGEtY29tcHV0ZS1jYikgZm9yIG1hbmFnaW5n
IElPTU1VDQpjb250ZXh0IGJhbmsgKENCKSBkZXZpY2VzIHVzZWQgYnkgdGhlIFFEQSBkcml2ZXIu
DQoNCklPTU1VIGNvbnRleHQgYmFua3MgYXJlIHN5bnRoZXRpYyBjb25zdHJ1Y3RzIOKAlCB0aGV5
IGFyZSBub3QgcmVhbA0KcGxhdGZvcm0gZGV2aWNlcyBhbmQgZG8gbm90IGFwcGVhciBhcyBjaGls
ZHJlbiBvZiBhIHBsYXRmb3JtIGJ1cyBub2RlDQppbiB0aGUgZGV2aWNlIHRyZWUuIFVzaW5nIGEg
cGxhdGZvcm0gZHJpdmVyIHRvIHJlcHJlc2VudCB0aGVtIHdhcw0KdGhlcmVmb3JlIGluY29ycmVj
dCBhbmQgaW50cm9kdWNlZCBhIHByb2JlLW9yZGVyaW5nIHJhY2U6IGRldmljZSBub2Rlcw0Kd2Vy
ZSBjcmVhdGVkIGJlZm9yZSB0aGUgUlBNc2cgY2hhbm5lbCByZXNvdXJjZXMgd2VyZSBmdWxseSBp
bml0aWFsaXplZCwNCmFuZCBiZWNhdXNlIHByb2JlIHJ1bnMgYXN5bmNocm9ub3VzbHksIHVzZXIt
c3BhY2UgY291bGQgb3BlbiBhIENCDQpkZXZpY2UgYW5kIGF0dGVtcHQgdG8gc3RhcnQgYSBzZXNz
aW9uIGJlZm9yZSB0aGUgdW5kZXJseWluZyB0cmFuc3BvcnQNCndhcyByZWFkeS4NCg0KVGhlIHFk
YS1jb21wdXRlLWNiIGJ1cyBzb2x2ZXMgdGhpcyBieSBhbGxvd2luZyB0aGUgbWFpbiBRREEgZHJp
dmVyIHRvDQpjcmVhdGUgQ0IgZGV2aWNlcyBleHBsaWNpdGx5IGFuZCB1bmRlciBpdHMgb3duIGNv
bnRyb2wsIG1ha2luZyB0aGVpcg0KbGlmZXRpbWUgc3RyaWN0bHkgc3Vib3JkaW5hdGUgdG8gdGhl
IHBhcmVudCBxZGFfZGV2LiBUaGUgYnVzIHByb3ZpZGVzDQphIGRtYV9jb25maWd1cmUgY2FsbGJh
Y2sgdGhhdCBjYWxscyBvZl9kbWFfY29uZmlndXJlKCkgc28gdGhhdCBlYWNoIENCDQpkZXZpY2Ug
Z2V0cyBpdHMgb3duIElPTU1VIGRvbWFpbiBkZXJpdmVkIGZyb20gaXRzIGRldmljZS10cmVlIG5v
ZGUsDQplbmFibGluZyBwZXItc2Vzc2lvbiBtZW1vcnkgaXNvbGF0aW9uLg0KDQpUaGUgYnVzIHR5
cGUgYW5kIHRoZSBDQiBkZXZpY2UgY29uc3RydWN0b3IgKGNyZWF0ZV9xZGFfY2JfZGV2aWNlKSBh
cmUNCmV4cG9ydGVkIGZvciB1c2UgYnkgdGhlIFFEQSBtZW1vcnkgbWFuYWdlci4NCg0KQSBoaWRk
ZW4gS2NvbmZpZyBzeW1ib2wgKERSTV9BQ0NFTF9RREFfQ09NUFVURV9CVVMpIGlzIGludHJvZHVj
ZWQgYW5kDQphdXRvbWF0aWNhbGx5IHNlbGVjdGVkIGJ5IERSTV9BQ0NFTF9RREEgc28gdGhhdCB0
aGUgYnVzIGluaXRpYWxpc2F0aW9uDQpydW5zIHZpYSBwb3N0Y29yZV9pbml0Y2FsbCBiZWZvcmUg
YW55IFFEQSBkZXZpY2UgcHJvYmVzLg0KDQpBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS00LTYt
c29ubmV0DQpTaWduZWQtb2ZmLWJ5OiBFa2Fuc2ggR3VwdGEgPGVrYW5zaC5ndXB0YUBvc3MucXVh
bGNvbW0uY29tPg0KLS0tDQogZHJpdmVycy9hY2NlbC9NYWtlZmlsZSAgICAgICAgICAgICAgfCAg
MSArDQogZHJpdmVycy9hY2NlbC9xZGEvS2NvbmZpZyAgICAgICAgICAgfCAgNCArKysNCiBkcml2
ZXJzL2FjY2VsL3FkYS9NYWtlZmlsZSAgICAgICAgICB8ICAyICsrDQogZHJpdmVycy9hY2NlbC9x
ZGEvcWRhX2NvbXB1dGVfYnVzLmMgfCA2OCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrDQogaW5jbHVkZS9saW51eC9xZGFfY29tcHV0ZV9idXMuaCAgICAgfCAzMiArKysrKysr
KysrKysrKysrKw0KIDUgZmlsZXMgY2hhbmdlZCwgMTA3IGluc2VydGlvbnMoKykNCg0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvYWNjZWwvTWFrZWZpbGUgYi9kcml2ZXJzL2FjY2VsL01ha2VmaWxlDQpp
bmRleCA1OGMwOGRkNWYzODkuLjllZDg0M2NkMjkzZiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvYWNj
ZWwvTWFrZWZpbGUNCisrKyBiL2RyaXZlcnMvYWNjZWwvTWFrZWZpbGUNCkBAIC02LDQgKzYsNSBA
QCBvYmotJChDT05GSUdfRFJNX0FDQ0VMX0hBQkFOQUxBQlMpCSs9IGhhYmFuYWxhYnMvDQogb2Jq
LSQoQ09ORklHX0RSTV9BQ0NFTF9JVlBVKQkJKz0gaXZwdS8NCiBvYmotJChDT05GSUdfRFJNX0FD
Q0VMX1FBSUMpCQkrPSBxYWljLw0KIG9iai0kKENPTkZJR19EUk1fQUNDRUxfUURBKQkJKz0gcWRh
Lw0KK29iai0kKENPTkZJR19EUk1fQUNDRUxfUURBX0NPTVBVVEVfQlVTKSArPSBxZGEvDQogb2Jq
LSQoQ09ORklHX0RSTV9BQ0NFTF9ST0NLRVQpCQkrPSByb2NrZXQvDQpcIE5vIG5ld2xpbmUgYXQg
ZW5kIG9mIGZpbGUNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL3FkYS9LY29uZmlnIGIvZHJp
dmVycy9hY2NlbC9xZGEvS2NvbmZpZw0KaW5kZXggNDg0ZDIxZmYxYjU1Li4yYTYxYTRkZGEwNTQg
MTAwNjQ0DQotLS0gYS9kcml2ZXJzL2FjY2VsL3FkYS9LY29uZmlnDQorKysgYi9kcml2ZXJzL2Fj
Y2VsL3FkYS9LY29uZmlnDQpAQCAtMywxMSArMywxNSBAQA0KICMgUXVhbGNvbW0gRFNQIGFjY2Vs
ZXJhdG9yIGRyaXZlcg0KICMNCiANCitjb25maWcgRFJNX0FDQ0VMX1FEQV9DT01QVVRFX0JVUw0K
Kwlib29sDQorDQogY29uZmlnIERSTV9BQ0NFTF9RREENCiAJdHJpc3RhdGUgIlF1YWxjb21tIERT
UCBhY2NlbGVyYXRvciINCiAJZGVwZW5kcyBvbiBEUk1fQUNDRUwNCiAJZGVwZW5kcyBvbiBBUkNI
X1FDT00gfHwgQ09NUElMRV9URVNUDQogCWRlcGVuZHMgb24gUlBNU0cNCisJc2VsZWN0IERSTV9B
Q0NFTF9RREFfQ09NUFVURV9CVVMNCiAJaGVscA0KIAkgIEVuYWJsZXMgdGhlIERSTS1iYXNlZCBh
Y2NlbGVyYXRvciBkcml2ZXIgZm9yIFF1YWxjb21tJ3MgSGV4YWdvbiBEU1BzLg0KIAkgIFRoaXMg
ZHJpdmVyIHByb3ZpZGVzIGEgc3RhbmRhcmRpemVkIGludGVyZmFjZSBmb3Igb2ZmbG9hZGluZyBj
b21wdXRhdGlvbmFsDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY2NlbC9xZGEvTWFrZWZpbGUgYi9k
cml2ZXJzL2FjY2VsL3FkYS9NYWtlZmlsZQ0KaW5kZXggZGJlODA5MDY3YThiLi40MjQxNzZmNjUy
YTUgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2FjY2VsL3FkYS9NYWtlZmlsZQ0KKysrIGIvZHJpdmVy
cy9hY2NlbC9xZGEvTWFrZWZpbGUNCkBAIC04LDMgKzgsNSBAQCBvYmotJChDT05GSUdfRFJNX0FD
Q0VMX1FEQSkJOj0gcWRhLm8NCiBxZGEteSA6PSBcDQogCXFkYV9kcnYubyBcDQogCXFkYV9ycG1z
Zy5vDQorDQorb2JqLSQoQ09ORklHX0RSTV9BQ0NFTF9RREFfQ09NUFVURV9CVVMpICs9IHFkYV9j
b21wdXRlX2J1cy5vDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY2NlbC9xZGEvcWRhX2NvbXB1dGVf
YnVzLmMgYi9kcml2ZXJzL2FjY2VsL3FkYS9xZGFfY29tcHV0ZV9idXMuYw0KbmV3IGZpbGUgbW9k
ZSAxMDA2NDQNCmluZGV4IDAwMDAwMDAwMDAwMC4uYzU5ZDk3N2U5MjRkDQotLS0gL2Rldi9udWxs
DQorKysgYi9kcml2ZXJzL2FjY2VsL3FkYS9xZGFfY29tcHV0ZV9idXMuYw0KQEAgLTAsMCArMSw2
OCBAQA0KKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkNCisvLyBDb3B5
cmlnaHQgKGMpIFF1YWxjb21tIFRlY2hub2xvZ2llcywgSW5jLiBhbmQvb3IgaXRzIHN1YnNpZGlh
cmllcy4NCisjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+DQorI2luY2x1ZGUgPGxpbnV4L2luaXQu
aD4NCisjaW5jbHVkZSA8bGludXgvb2YuaD4NCisjaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+
DQorI2luY2x1ZGUgPGxpbnV4L3FkYV9jb21wdXRlX2J1cy5oPg0KKyNpbmNsdWRlIDxsaW51eC9z
bGFiLmg+DQorDQorc3RhdGljIGludCBxZGFfY2JfYnVzX2RtYV9jb25maWd1cmUoc3RydWN0IGRl
dmljZSAqZGV2KQ0KK3sNCisJcmV0dXJuIG9mX2RtYV9jb25maWd1cmUoZGV2LCBkZXYtPm9mX25v
ZGUsIHRydWUpOw0KK30NCisNCitjb25zdCBzdHJ1Y3QgYnVzX3R5cGUgcWRhX2NiX2J1c190eXBl
ID0gew0KKwkubmFtZSA9ICJxZGEtY29tcHV0ZS1jYiIsDQorCS5kbWFfY29uZmlndXJlID0gcWRh
X2NiX2J1c19kbWFfY29uZmlndXJlLA0KK307DQorRVhQT1JUX1NZTUJPTF9HUEwocWRhX2NiX2J1
c190eXBlKTsNCisNCitzdGF0aWMgdm9pZCByZWxlYXNlX3FkYV9jYl9kZXZpY2Uoc3RydWN0IGRl
dmljZSAqZGV2KQ0KK3sNCisJb2Zfbm9kZV9wdXQoZGV2LT5vZl9ub2RlKTsNCisJa2ZyZWUoZGV2
KTsNCit9DQorDQorc3RydWN0IGRldmljZSAqY3JlYXRlX3FkYV9jYl9kZXZpY2Uoc3RydWN0IGRl
dmljZSAqcGFyZW50X2RldmljZSwgY29uc3QgY2hhciAqbmFtZSwNCisJCQkJICAgIHU2NCBkbWFf
bWFzaywgc3RydWN0IGRldmljZV9ub2RlICpvZl9ub2RlKQ0KK3sNCisJc3RydWN0IGRldmljZSAq
ZGV2Ow0KKwlpbnQgcmV0Ow0KKw0KKwlkZXYgPSBremFsbG9jX29iaigqZGV2KTsNCisJaWYgKCFk
ZXYpDQorCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsNCisNCisJZGV2LT5yZWxlYXNlID0gcmVs
ZWFzZV9xZGFfY2JfZGV2aWNlOw0KKwlkZXYtPmJ1cyA9ICZxZGFfY2JfYnVzX3R5cGU7DQorCWRl
di0+cGFyZW50ID0gcGFyZW50X2RldmljZTsNCisJZGV2LT5jb2hlcmVudF9kbWFfbWFzayA9IGRt
YV9tYXNrOw0KKwlkZXYtPmRtYV9tYXNrID0gJmRldi0+Y29oZXJlbnRfZG1hX21hc2s7DQorCWRl
di0+b2Zfbm9kZSA9IG9mX25vZGVfZ2V0KG9mX25vZGUpOw0KKw0KKwlkZXZfc2V0X25hbWUoZGV2
LCAiJXMiLCBuYW1lKTsNCisNCisJcmV0ID0gZGV2aWNlX3JlZ2lzdGVyKGRldik7DQorCWlmIChy
ZXQpIHsNCisJCXB1dF9kZXZpY2UoZGV2KTsNCisJCXJldHVybiBFUlJfUFRSKHJldCk7DQorCX0N
CisNCisJcmV0dXJuIGRldjsNCit9DQorRVhQT1JUX1NZTUJPTF9HUEwoY3JlYXRlX3FkYV9jYl9k
ZXZpY2UpOw0KKw0KK3N0YXRpYyBpbnQgX19pbml0IHFkYV9jYl9idXNfaW5pdCh2b2lkKQ0KK3sN
CisJaW50IGVycjsNCisNCisJZXJyID0gYnVzX3JlZ2lzdGVyKCZxZGFfY2JfYnVzX3R5cGUpOw0K
KwlpZiAoZXJyIDwgMCkgew0KKwkJcHJfZXJyKCJxZGEtY29tcHV0ZS1jYiBidXMgcmVnaXN0cmF0
aW9uIGZhaWxlZDogJWRcbiIsIGVycik7DQorCQlyZXR1cm4gZXJyOw0KKwl9DQorCXJldHVybiAw
Ow0KK30NCisNCitwb3N0Y29yZV9pbml0Y2FsbChxZGFfY2JfYnVzX2luaXQpOw0KZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbGludXgvcWRhX2NvbXB1dGVfYnVzLmggYi9pbmNsdWRlL2xpbnV4L3FkYV9j
b21wdXRlX2J1cy5oDQpuZXcgZmlsZSBtb2RlIDEwMDY0NA0KaW5kZXggMDAwMDAwMDAwMDAwLi45
MGJmMjQ4YzcyODUNCi0tLSAvZGV2L251bGwNCisrKyBiL2luY2x1ZGUvbGludXgvcWRhX2NvbXB1
dGVfYnVzLmgNCkBAIC0wLDAgKzEsMzIgQEANCisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMC1vbmx5ICovDQorLyoNCisgKiBDb3B5cmlnaHQgKGMpIFF1YWxjb21tIFRlY2hub2xv
Z2llcywgSW5jLiBhbmQvb3IgaXRzIHN1YnNpZGlhcmllcy4NCisgKi8NCisNCisjaWZuZGVmIF9f
UURBX0NPTVBVVEVfQlVTX0hfXw0KKyNkZWZpbmUgX19RREFfQ09NUFVURV9CVVNfSF9fDQorDQor
I2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPg0KKw0KKy8qDQorICogQ3VzdG9tIGJ1cyB0eXBlIGZv
ciBRREEgY29tcHV0ZSBjb250ZXh0IGJhbmsgKENCKSBkZXZpY2VzDQorICoNCisgKiBUaGlzIGJ1
cyB0eXBlIGlzIHVzZWQgZm9yIG1hbnVhbGx5IGNyZWF0ZWQgQ0IgZGV2aWNlcyB0aGF0IHJlcHJl
c2VudA0KKyAqIElPTU1VIGNvbnRleHQgYmFua3MuIFRoZSBjdXN0b20gYnVzIGFsbG93cyBwcm9w
ZXIgSU9NTVUgY29uZmlndXJhdGlvbg0KKyAqIGFuZCBkZXZpY2UgbWFuYWdlbWVudCBmb3IgdGhl
c2UgdmlydHVhbCBkZXZpY2VzLg0KKyAqLw0KKyNpZmRlZiBDT05GSUdfRFJNX0FDQ0VMX1FEQV9D
T01QVVRFX0JVUw0KK2V4dGVybiBjb25zdCBzdHJ1Y3QgYnVzX3R5cGUgcWRhX2NiX2J1c190eXBl
Ow0KKw0KK3N0cnVjdCBkZXZpY2UgKmNyZWF0ZV9xZGFfY2JfZGV2aWNlKHN0cnVjdCBkZXZpY2Ug
KnBhcmVudF9kZXZpY2UsIGNvbnN0IGNoYXIgKm5hbWUsDQorCQkJCSAgICB1NjQgZG1hX21hc2ss
IHN0cnVjdCBkZXZpY2Vfbm9kZSAqb2Zfbm9kZSk7DQorI2Vsc2UNCitzdGF0aWMgaW5saW5lIHN0
cnVjdCBkZXZpY2UgKmNyZWF0ZV9xZGFfY2JfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKnBhcmVudF9k
ZXZpY2UsDQorCQkJCQkJICBjb25zdCBjaGFyICpuYW1lLCB1NjQgZG1hX21hc2ssDQorCQkJCQkJ
ICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm9mX25vZGUpDQorew0KKwlyZXR1cm4gRVJSX1BUUigtRU5P
REVWKTsNCit9DQorI2VuZGlmDQorDQorI2VuZGlmIC8qIF9fUURBX0NPTVBVVEVfQlVTX0hfXyAq
Lw0KDQotLSANCjIuMzQuMQ0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
