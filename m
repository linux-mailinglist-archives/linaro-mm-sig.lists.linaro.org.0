Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHRiNszTnGkJLAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 23:25:16 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC2917E49B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 23:25:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 658D840144
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 22:25:15 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 993D840144
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:25:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XtqRmn6s;
	spf=pass (lists.linaro.org: domain of andersson@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=andersson@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0795341A8B;
	Mon, 23 Feb 2026 22:25:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EE5BC116C6;
	Mon, 23 Feb 2026 22:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771885512;
	bh=wfg4VRQE5OBvnbfLt0WHzLC4rvZAYdoLxo98gn+3YZ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XtqRmn6sXzxFhXP8E1IfC+idVmhuk6RUIOBACSkm8U+6774jsU0QDnOUnd+IxaDbn
	 YUtMJccEZHsa+M/i6Lpr8CyXFcryxYRuwtRBtpNgAEWqIcv1Ec45o3CHJ7qpjfyCzd
	 T+DQp8mMgCp2ELMj037MUXQZbdO8AvpA1Jb5KxKf+ukIMRNAY1/dQhePyW7jSaWNl8
	 Ql9cNguaVf3Q8b/Lw9d8xi52N3OPFD3kAOSKKe0WJa7CqFIymNvuiPUoABLoBIp/ce
	 9Pc1lacSracywRFZSsWniAQ1LIM0cjNqajIIxbnGgU5hwzNuDorYyN8tjmXkewdouL
	 XHI3edGwUpc7Q==
Date: Mon, 23 Feb 2026 16:25:08 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Message-ID: <oe4ho45dxtwjjjsqj6nd4op3gh7dz2pqwsuuhgqpdbf5hym645@smg3g4evqmge>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-3-fe46a9c1a046@oss.qualcomm.com>
 <tqsdbijgjomrn7fq3sdz7v2axwxqvbccpjh4fmvod4kbrq7pod@af3igw5dx66p>
 <lyco6vkfjlerri55ldyn6fbhihbkhnuolifddcnscevybsztq7@ljhjln2ynmid>
 <r7eko65ua2ofyejqf6ipnh6jm4s76f4mqy6a4msgmlraz4xuec@uymfzc65dbng>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <r7eko65ua2ofyejqf6ipnh6jm4s76f4mqy6a4msgmlraz4xuec@uymfzc65dbng>
X-Spamd-Bar: ---
Message-ID-Hash: N7HDLGQPMHRLDPFFOPG4D3VMRIBRYLZ7
X-Message-ID-Hash: N7HDLGQPMHRLDPFFOPG4D3VMRIBRYLZ7
X-MailFrom: andersson@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 03/18] accel/qda: Add RPMsg transport for Qualcomm DSP accelerator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N7HDLGQPMHRLDPFFOPG4D3VMRIBRYLZ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[andersson@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 5FC2917E49B
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 12:12:32AM +0200, Dmitry Baryshkov wrote:
> On Mon, Feb 23, 2026 at 03:50:32PM -0600, Bjorn Andersson wrote:
> > On Mon, Feb 23, 2026 at 11:23:13PM +0200, Dmitry Baryshkov wrote:
> > > On Tue, Feb 24, 2026 at 12:38:57AM +0530, Ekansh Gupta wrote:
> > [..]
> > > > diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
> > [..]
> > > > +/* Error logging - always logs and tracks errors */
> > > > +#define qda_err(qdev, fmt, ...) do { \
> > > > +	struct device *__dev = qda_get_log_device(qdev); \
> > > > +	if (__dev) \
> > > > +		dev_err(__dev, "[%s] " fmt, __func__, ##__VA_ARGS__); \
> > > > +	else \
> > > > +		pr_err(DRIVER_NAME ": [%s] " fmt, __func__, ##__VA_ARGS__); \
> > > 
> > > What /why? You are under drm, so you can use drm_* helpers instead.
> > > 
> > 
> > In particular, rather than rolling our own wrappers around standard
> > functions, just use dev_err() whenever you have a struct device. And for
> > something like fastrpc - life starts at some probe() and ends at some
> > remove() so that should be always.
> 
> I'd say differently. For the DRM devices the life cycle is centered
> around the DRM device (which can outlive platform device for multiple
> reasons). So, please start by registering the DRM accel device and using
> it for all the logging (and btw for private data management too).
> 

There are no platform_devices here, but tomato tomato... What defines
the life cycle of the DRM device then? Might it linger because clients
are holding open handles to it?

Note that the fastrpc service is coming and going, as the remoteproc
starts and stops.

Regards,
Bjorn

> > 
> > Regards,
> > Bjorn
> 
> -- 
> With best wishes
> Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
