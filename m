Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C1FB57E4C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Sep 2025 16:03:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 259AC45D3D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Sep 2025 14:03:33 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id EB2524159B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Sep 2025 14:03:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ePsbBEj7;
	spf=pass (lists.linaro.org: domain of andersson@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=andersson@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 640ED4196A;
	Mon, 15 Sep 2025 14:03:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5EDCC4CEF1;
	Mon, 15 Sep 2025 14:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757945004;
	bh=3OGpAD/DchUR1g97RRHzHWYq+4uUvSPasPeyQ225Wbw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ePsbBEj7Xnja3jcodWPE9dWOmMn5QFEarpYbh77+opI5UEfW4s2diz9T0dmsLgpXH
	 7hex+7mEbHOw4A6gcLtg+2YJLyfFsOxm3oNAYi55mbDGYGvEzjSWZEBqfbcFJMv+TZ
	 cFVSWimnCfZai8Lji+z0GAuK7XR+pvIP5ipesFhyp/iU0Qi+xovpCcj7hzTj4yladf
	 Jqk9hrb19xKTnctrFPfpuoZ5/nWiQ2td4pwFxDHLkftR/tp8+RTrDw5ZUh4qhC47WV
	 25nGeIUReGZB9erzYXtEiEnKvwgdOsNbYHIEANFg9/KbyyBH4cxAnXA+xFsuIoorrB
	 dJraCaCEONZVw==
From: Bjorn Andersson <andersson@kernel.org>
To: Jens Wiklander <jens.wiklander@linaro.org>,
	Sumit Garg <sumit.garg@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Apurupa Pattapu <quic_apurupa@quicinc.com>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 09:03:21 -0500
Message-ID: <175794499686.3800302.11326605409469132909.b4-ty@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250911-qcom-tee-using-tee-ss-without-mem-obj-v12-0-17f07a942b8d@oss.qualcomm.com>
References: <20250911-qcom-tee-using-tee-ss-without-mem-obj-v12-0-17f07a942b8d@oss.qualcomm.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EB2524159B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.56 / 15.00];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	BAYES_HAM(-1.56)[92.14%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[21];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: 62AQWD6YJKROK3ODLE5KRRU2AFLM4FOH
X-Message-ID-Hash: 62AQWD6YJKROK3ODLE5KRRU2AFLM4FOH
X-MailFrom: andersson@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Harshal Dev <quic_hdev@quicinc.com>, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, Kuldeep Singh <quic_kuldsing@quicinc.com>, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v12 00/11] Trusted Execution Environment (TEE) driver for Qualcomm TEE (QTEE)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/62AQWD6YJKROK3ODLE5KRRU2AFLM4FOH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Thu, 11 Sep 2025 21:07:39 -0700, Amirreza Zarrabi wrote:
> This patch series introduces a Trusted Execution Environment (TEE)
> driver for Qualcomm TEE (QTEE). QTEE enables Trusted Applications (TAs)
> and services to run securely. It uses an object-based interface, where
> each service is an object with sets of operations. Clients can invoke
> these operations on objects, which can generate results, including other
> objects. For example, an object can load a TA and return another object
> that represents the loaded TA, allowing access to its services.
> 
> [...]

Applied, thanks!

[01/11] firmware: qcom: tzmem: export shm_bridge create/delete
        commit: 8aa1e3a6f0ffbcfdf3bd7d87feb9090f96c54bc4
[02/11] firmware: qcom: scm: add support for object invocation
        commit: 4b700098c0fc4a76c5c1e54465c8f35e13755294

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
