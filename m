Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD9757B7D1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 15:47:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 223084796D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 13:47:45 +0000 (UTC)
Received: from mail-4323.proton.ch (mail-4323.proton.ch [185.70.43.23])
	by lists.linaro.org (Postfix) with ESMTPS id C708C3E900
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 14:54:00 +0000 (UTC)
Date: Wed, 29 Jun 2022 14:53:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
	s=protonmail2; t=1656514439; x=1656773639;
	bh=jgx5qL+qt7rskFGOjzbeoMeHSUpyUNBp4rUtF20noHY=;
	h=Date:To:From:Cc:Reply-To:Subject:Message-ID:In-Reply-To:
	 References:Feedback-ID:From:To:Cc:Date:Subject:Reply-To:
	 Feedback-ID:Message-ID;
	b=RvNY50jFfbWs6i3uWd6/n0DzDoh2xDnOYu0beLZt6sSTpsrB8MWCVVUgJTJom3Uwl
	 WZ7ChuCxhpQkJE7GZc7HXyRnMAFb79ayGeHojQ06SA6mjh/lHqBKxQIVTskjkus9O0
	 nCgyQ1erYSfQy6UbK0XNLy2X6BVi5XBJ1gBCxO8Qw8oYnkCKjY7WVcuj+g804g7Twq
	 kERswDzm7RZkCejmB7BhqCqq2QXFwnEuwWw3BVA6iWGbbYpYQ0l6mf7NwPKLagYmoR
	 qL+oHWowC28FhXSArbHOnULpcuaeTAGnQZLFb5mHrwM9rvLCCihxdaqgX8tN99TWYp
	 2XSKslO0Pmgng==
To: Dennis Tsiang <dennis.tsiang@arm.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <o1qcCo8e19pmmNe-YJbPkmu4SBrOQ_E3u7eqdrcXUzdBccLtFswL_ARTpbrX9C10tippuy5ieXAsqdf7H47JuT7Hqa1NlizAPqVuRM0kRt4=@emersion.fr>
In-Reply-To: <05513f59-0bd9-77cd-36d4-41027bc339be@arm.com>
References: <AS8PR08MB81117652E417826E741154B8F8B99@AS8PR08MB8111.eurprd08.prod.outlook.com> <20220627175026.6a5dd239@eldfell> <05513f59-0bd9-77cd-36d4-41027bc339be@arm.com>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
X-MailFrom: contact@emersion.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: R5MRE2EQT3TUM6VIYHZUXQGZYLEQ2JF4
X-Message-ID-Hash: R5MRE2EQT3TUM6VIYHZUXQGZYLEQ2JF4
X-Mailman-Approved-At: Wed, 20 Jul 2022 13:47:43 +0000
CC: Pekka Paalanen <ppaalanen@gmail.com>, Normunds Rieksts <Normunds.Rieksts@arm.com>, airlied@linux.ie, tzimmermann@suse.de, Liviu Dudau <Liviu.Dudau@arm.com>, linux-kernel@vger.kernel.org, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, david.harvey-macaulay@arm.com, Lisa Wu <lisa.wu@arm.com>, nd <nd@arm.com>, sumit.semwal@linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: Simon Ser <contact@emersion.fr>
Subject: [Linaro-mm-sig] Re: [PATCH 0/1] [RFC] drm/fourcc: Add new unsigned R16_UINT/RG1616_UINT formats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R5MRE2EQT3TUM6VIYHZUXQGZYLEQ2JF4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wednesday, June 29th, 2022 at 16:46, Dennis Tsiang <dennis.tsiang@arm.com> wrote:

> Thanks for your comments. This is not intended to be used for KMS, where
> indeed there would be no difference. This proposal is for other Graphics
> APIs such as Vulkan, which requires the application to be explicit
> upfront about how they will interpret the data, whether that be UNORM,
> UINT .etc. We want to be able to import dma_bufs which create a VkImage
> with a "_UINT" VkFormat. However there is currently no explicit mapping
> between the DRM fourccs + modifiers combos to "_UINT" VkFormats. One
> solution is to encode that into the fourccs, which is what this RFC is
> proposing.

As a general comment, I don't think it's reasonable to encode all of the
VkFormat information inside DRM FourCC. For instance, VkFormat has SRGB/UNORM
variants which describe whether pixel values are electrical or optical
(IOW, EOTF-encoded or not). Moreover, other APIs may encode different
information in their format enums.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
