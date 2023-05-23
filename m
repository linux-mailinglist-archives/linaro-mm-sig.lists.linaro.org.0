Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B02CF70F31C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:39:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A99E841420
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:39:07 +0000 (UTC)
Received: from sonic304-25.consmr.mail.gq1.yahoo.com (sonic304-25.consmr.mail.gq1.yahoo.com [98.137.68.206])
	by lists.linaro.org (Postfix) with ESMTPS id 5A09E3EBCF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 23:23:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=yahoo.com header.s=s2048 header.b=T2ahkWEN;
	spf=pass (lists.linaro.org: domain of astrajoan@yahoo.com designates 98.137.68.206 as permitted sender) smtp.mailfrom=astrajoan@yahoo.com;
	dmarc=pass (policy=reject) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684884233; bh=Jx7So8nbrA+NGRWbD/9JPkNHTmfY6L1rcTJmWjOWwv0=; h=From:To:Cc:Subject:Date:References:From:Subject:Reply-To; b=T2ahkWENlK8XmaQa0fkqQuMXT+VdqWM5KNZnQH+5xPbuTtKqp7CICeimtKIkwuMiLth347EFPPs6rzuXqFUJMvQ0KIxx3PzmdPQ9KgyuZ1GidyHXKmVo7NzRtLTjw/omXqYR/+e57Blnkhv4KwvpQkh1RKzKisLAH3407pzsGxapTxN+178AeG+ia0hHccGeW9UoVUf6DqEJt3/JS2r+96GzR/dhpBEbCS3cdLfsJlCQ0CvibgGCSlyz6Ee/Ld5kna/ZuHxBoyXArmXTIShwDdUe43M3uqR/5ZNfDnfKFi27bKY8xPXXGT0noEEKvr9Ua5cpHuy08MX/PILLfzsxJw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684884233; bh=c1QiC0WQyrDke3FL5hR5H/ExWXpKf2x+1L9Lm7ZtWoQ=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=hLoeSWc/fJ/jcnKGqX3NvHASNYpUHNuAOseJtn403GRRKkTi800850lFYMyhYMLhjKKPe538qpkEMsfawszyTbo6sEhTdPSFIiF8iLr0E3LWHJJZ1W0V60/Y45P2Y5VEKDFT+oSVP6ohLLdTCOSy7aOCTuaK6x9Vs+tbTiQtWf6W2U3Uhf1BRU9yGwtzbOXXvKwf2joHRfcMvk2qcxOEkbyfgl633d6JtUe3MOeZ32pZ6V+1qFS0Pxb2a03OD+9JVPUGsKVvLwQxeOEJqcOUU657Z86MzbA3mK5w//cIhOu7Hg5vxGBWsPCZkmhUb/GfOQ4xdh1cwyp2HAprPTBfJA==
X-YMail-OSG: lq2GUMoVM1mVbNRf3gRpKd4G7XxpPhAJ0UgnE7GSyrDErZgJa0KwR7NHs85NkXB
 qXuPuaxXPjSeRlb7s1wOjinOgOCD4AxSTJejtE_xExU_rswz3weZsWcXjEklQNxioe0UwgZ97GYj
 mys2DYt7AZ__U0.oMGWgNHKpZEwt2FG9joBe2dJPBd.5wcVuekWInDUjefCZNegcfF8M_BjfzFVq
 J0.1IVsQxHl9RUi14PebtFYaLXkRKLMS0vXOJ6H3M1fxH7F.RriZmmxSZxFYWq_eC0eiCKlDlqJF
 UV5R37qYX_nWa1QQprjqj_X52mEW_2JqIGasHanigtzX28NrlHChzSIJfe.S_xpNy9lY5vCgZKO7
 iNkwl7hZuSqTm7hTPA4bntyGSNVGi1psVDFQrkW3w8Qf0AOoFCwyx1dwptTv3uHMou.NzK.8_mwC
 n222CAWUh9tMM3vaKSJJl85sdqFQaBX0CBrnIdSNMhpfBUIvSB.blnDXQI39yeGuzVy3hPUH9AtX
 jCjHBJdNIt82.QCOR3t1e7Iv4yf287YUIL7oUQOQs5HfAd19.45ZCv0tvu6q3_eaO_u5tII2G1vc
 Je8dQ_yuiY2fy3NCzm64rHCoQmUyqYzWz1.ihsewaLWnt69POzjKS5CrtBSbMh_XhT24_.1SICG2
 7A9BeXbmhdH0TWTreP6DmiDzS.5EwP1SD11daSAn5NZZ5XuhdJCMAA1YpTC38cmw0WPZ__OTqGmH
 OZONDHFcUVrlzEDNZQklIy1ddn8huie.v7Q19KYynkBePBM7wirjhB2mY4odT.S8y3jGerEAl1EB
 .m2iF7frdJqyaaRVmPvu37oAl2Y.6vQpg0OuYOdcgoiXsGBkK1FOQUU__8G9zEFBYWvURKWcPr0S
 OLs1hOqgQP9qUhuZxIEY.eALTxLqGun3MxfuhFzg21.WRqK.6eaMSIzZWwEyCk2lnJHkx.O84B7P
 AOl4AkUEnqCML6o5CvvoncbujVG7Gw2NXGLg08XILDOn2JT.6iULQaq6TDeIUKy2qp.k.wAUhKvT
 V8OE3USUQlXSqlCIxyQexJdkXV9KS0_2I_EO2POLn6fd9h_SJc5FqEMCEdQOTlwh.vgt_WNgHNa.
 8_NJw8SFzsPCff_uqwm.wx17ZD0tog8NvrNq0.c2KIgVAtclenSV8qZ4zYaauNCWw91cyFZwgb9k
 hluu99hyaGe2eKWPrDrnxECjVEOVV1_4VBX4uhuzyc.oCzeoSRr2pgOH1kiFuqxUpjEaptrEehy7
 N6SZRGDxKmWBZnTSbEV5wcvgcafwZMQQjAq1ySIiNQboR_9.BriVolJwq4JuWzABWxl7G6PLiGeO
 KExHRDlKV7eyrrUI4cCdkdrwXLyQnHWhck33GB5upVzDGqr7TWPXioQCbp_AQ93mH88X5rrnFj66
 XruGp6PZFaTojgieKJiAaHkBjYBeuz4.QVOb5_sP4bsahW3POFxFkavtPvA.pZYaWRAyssJm3uGj
 BiRc.V.pyLp2ZDnt1uRm973drtxBey3p1z2Rr.4QlvSd7qgwXIg07mZiqjX5NmBvUl5joMJxF4AU
 OqMfXwqUryRs_dpLIJZ0ybRd7rCQ29P7KQRcvBcG9q6ywbUI0hfIqvmpV7bef11mxM1NaNqAmd2n
 IRrX0fOnnWqQW7znDE1bK6YSjnokxuiJEyW2FCiVmVFm0BfBVkH.liB77wr9ODWapg3vMVerXnr5
 74RCnVZZJjNRUEIOD0NxVeKF2sprlqC0B2RGgW6vJBqp1th.AwjlwLJq21r5tLGcSEAjUVFX73QR
 KFbRm77WYP4XDzeAjuZs9hCuC.66NaRcU9.56VF8XuXxlbMaFUlzJrhEaIIUUL8c9O_HupihhYFW
 _Jt4ClCcix2lY.GKXGU5KwpoYxxzAOow47H5PbnqX7KJ7hJLgfkE7wRKQpbzGiwP2_5ClpJ.avXM
 dxTS4MpZWAESVzzMWB6JA1GsoysXsf3HcfRv_YTN5UHVAdpeEiBNQHsRSXYGguD7L5mjMpX675RG
 s5samRtu75O0q9q.SX60TC9L13rCCJYWfd41pfs7esXO6eWY.Qm4NDaoVyabr84IIsw0EkH5gSzS
 Y3QrSa.AQCKol1B83lzWIzcdh__ja3KG8EqAuUz0G4upHa1Y7wPOkMDY5NpYtLYfvtI5RhF6hW2j
 nAo9AbcRb6HaGngKPdTYwwwmdsPKQkvGNdq0JOc3KUFpnhdcdvIegeL3__YG3Kxz3c6SRaxh64sN
 2_qMa_NRQzFdsPomAqPkneO4G.IoXhPRbKbXRQ.QVIUFy4VxTSIxBtQ5PgFf5fHvpIzR13Haz
X-Sonic-MF: <astrajoan@yahoo.com>
X-Sonic-ID: 1bbb1ce7-9557-46b8-a022-f435a37c3c48
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.gq1.yahoo.com with HTTP; Tue, 23 May 2023 23:23:53 +0000
Received: by hermes--production-bf1-54475bbfff-xmg9w (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID d157402ea91e225da98a9424db96668e;
          Tue, 23 May 2023 23:23:50 +0000 (UTC)
From: Ziqi Zhao <astrajoan@yahoo.com>
To: skhan@linuxfoundation.org
Date: Tue, 23 May 2023 23:23:31 +0000
Message-Id: <20230523232331.363182-1-astrajoan@yahoo.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
References: <20230523232331.363182-1-astrajoan.ref@yahoo.com>
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[yahoo.com,reject];
	R_DKIM_ALLOW(-0.20)[yahoo.com:s=s2048];
	R_SPF_ALLOW(-0.20)[+ptr:yahoo.com];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[yahoo.com,amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:36647, ipnet:98.137.64.0/20, country:US];
	FREEMAIL_ENVFROM(0.00)[yahoo.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[98.137.68.206:from];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[yahoo.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[yahoo.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5A09E3EBCF
X-Spamd-Bar: --
X-MailFrom: astrajoan@yahoo.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: W4ZW5JFUXGBEZP73C5GIKSVT2ZCJ23VB
X-Message-ID-Hash: W4ZW5JFUXGBEZP73C5GIKSVT2ZCJ23VB
X-Mailman-Approved-At: Wed, 24 May 2023 09:36:22 +0000
CC: Ziqi Zhao <astrajoan@yahoo.com>, alexander.deucher@amd.com, christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, Hawking.Zhang@amd.com, mario.limonciello@amd.com, lijo.lazar@amd.com, YiPeng.Chai@amd.com, andrey.grodzovsky@amd.com, Amaranath.Somalapuram@amd.com, Bokun.Zhang@amd.com, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [Linux-kernel-mentorship] [PATCH] drm/amdgpu: remove excess parameter description in amdgpu_device.c
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W4ZW5JFUXGBEZP73C5GIKSVT2ZCJ23VB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This patch is part of the Linux Kernel Bug Fixing Summer screening
tasks. By removing the extra description, several documentation
compilation warnings such as the following have been fixed:

> ./drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:758: warning: Excess function parameter 'pcie_index' description in 'amdgpu_device_indirect_wreg'

Note: I assume the description can be safely removed based on this
earlier patch:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch?id=65ba96e91b689c23d6fa99c11cfd65965dcddc47

Signed-off-by: Ziqi Zhao <astrajoan@yahoo.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
index 5c7d40873ee2..58d8f60c6a3a 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
@@ -747,8 +747,6 @@ u64 amdgpu_device_indirect_rreg64(struct amdgpu_device *adev,
  * amdgpu_device_indirect_wreg - write an indirect register address
  *
  * @adev: amdgpu_device pointer
- * @pcie_index: mmio register offset
- * @pcie_data: mmio register offset
  * @reg_addr: indirect register offset
  * @reg_data: indirect register data
  *
@@ -778,8 +776,6 @@ void amdgpu_device_indirect_wreg(struct amdgpu_device *adev,
  * amdgpu_device_indirect_wreg64 - write a 64bits indirect register address
  *
  * @adev: amdgpu_device pointer
- * @pcie_index: mmio register offset
- * @pcie_data: mmio register offset
  * @reg_addr: indirect register offset
  * @reg_data: indirect register data
  *
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
